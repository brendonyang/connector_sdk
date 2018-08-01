[![Workato](images/workato_logo.png)](https://www.workato.com)

# Introduction

Welcome to the Workato Developer Program website. Here you will find the resources you need to build application adapters using our SDK.

Alternatively, Workato offers a [HTTP Connector](http://bit.ly/WorkatoHTTPConnector) where you can create your own app connectors without having to code.

## Recipe

A Workato recipe is a set of predefined instructions to be executed. It is made up of a trigger and one or more actions.

It execute a variety of tasks to all the applications supported by the Workato platform.

## Trigger

Defines an event that triggers the execution of a Workato recipe.

## Action

Steps that will be executed when a recipe is triggered.

There are 4 types of actions:

1. **Action**
  - Basic actions perform tasks like Search, Create, Update
2. **Conditional action**
  - These actions behave like traffic control. They provide users with the capability to restrict certain actions based on conditions.
  - Example: Create a new Account only if it does not already exist
3. **Repeat action**
  - Repeat actions are simple loops. They perform predefined tasks multiple times based on an array (list) of records.
  - Example: Add line items in QuickBooks for each opportunity item in Salesforce
4. **Stop**
  - Allows users to terminate a run of the recipe (a job). This is useful if you wish to stop performing any actions if a certain condition is met.
  - Optionally, you can define an error for this action. What this does is let you generate exceptions in certain scenarios. These jobs that stops with errors will show up in job history as errors

## Adapter

An adapter is a connector to an application. Each adapter has one or more trigger and actions. When an action or trigger is executed, it performs its respective function with the account instance connected to that application.

# Connector SDK

## Custom Adapters

Connectors built on the SDK are called **custom adapters**. These connectors have private scope. This means that they are only available to the connector owner.

To enable global scope for this connector, the code will need to go through review by the Workato team. You can begin this process by submitting a pull request to our [repository](https://github.com/workato/connector_sdk).

## Requirements

### REST Architecture

Presently, only RESTful APIs are supported by the Connector SDK.

### Format

Presently, we support the following types
  - JSON
  - XML

### Bonus

#### Pagination

Pagination helps with response data that is more manageable. It is definitely a bonus if the intended API supports that.

#### Query

It is very useful to be able to query resources instead of locating them based on IDs. With search by query, the API allows you to return a list of results that matches your field criteria. You may also want to look out for the ability to query based on created/updated time which will be crucial when building out your triggers.

# Connection

## Authentication

There are multiple authentication types available on Workato. This section provides resources for each of the different connection types and can help you get your custom adapter connected to Workato.

### Basic Authentication

Find out more [here](https://docs.workato.com/developing-connectors/sdk/authentication/basic-authentication.html).

### API Key Authentication

Find out more [here](https://docs.workato.com/developing-connectors/sdk/authentication/basic-authentication.html#api-key-authentication).

### OAuth 2.0

Find out more [here](https://docs.workato.com/developing-connectors/sdk/authentication/oauth2-authentication.html).

### Custom Authentication

Find out more [here](https://docs.workato.com/developing-connectors/sdk/authentication/oauth2-authentication.html).

## Base URI

Base URI was introduced to help shorten the method calls, omitting the need to specify the full URI. After defining the base URI, when using the HTTP verb methods, only the endpoint for the particular trigger/action has to be specified.

### Definition
```ruby
base_uri: lambda do
  "https://harvest.greenhouse.io"
end
```

### Usage Examples

After defining the base URI, subsequently, future calls to the API endpoint can have the base URI omitted:

```ruby
  test: lambda do |_connection|
    get("/v1/users").params(per_page: 1)
  end,
```

instead of

```ruby
  test: lambda do |_connection|
    get("https://harvest.greenhouse.io/v1/users").params(per_page: 1)
  end,
```

## Test

The `Test` block is important to ensure that connection is successful. This should be a request that will always be accessible to any user, to ensure that the connection is correctly set set-up.

Find out more [here](https://docs.workato.com/developing-connectors/sdk/authentication/test.html).

## Trigger

We have three different types of triggers that can be built on a SDK connector. They are:
- [Poll Trigger](https://docs.workato.com/developing-connectors/sdk/trigger/poll-trigger.html)
- [Dynamic Webhook Trigger](https://docs.workato.com/developing-connectors/sdk/trigger/webhook-trigger.html)
- [Static Webhook Trigger](https://docs.workato.com/developing-connectors/sdk/trigger/static-webhook-trigger.html)

Find out how to create a trigger [here](https://docs.workato.com/developing-connectors/sdk/trigger.html).

## Action

Find out how to create an action [here](https://docs.workato.com/developing-connectors/sdk/action.html).

### Endpoints

An action can make one or more requests to various endpoints. Because the framework handles the authentication side of a request, you will not have to worry about that here.

The most important thing is to identify which endpoint will address the purpose of the action.

Find out more [here](https://docs.workato.com/developing-connectors/sdk/action.html#endpoints).

### Parameter / Payload

Other endpoints require parameters to access certain details, instead of accessing a particular resource route.

Find out more [here](https://docs.workato.com/developing-connectors/sdk/action.html#body).

### Methods

Not all ruby public instance methods are available. Methods are whitelisted to ensure security. The Workato SDK Framework also exposes some methods to make building SDKs convenient.

Find out more [here](https://docs.workato.com/developing-connectors/sdk/methods.html).

(This list can and will be expanded constantly, feel free to contact [me](eeshan@workato.com) to update/add to this list)

## Pick List

A pick list is list of choices predefined for a user to select instead of having to input the actual values.
It is useful when there is a list of accepted values for a field or when the field requires a value that is not visible. For example, a field that requires User ID will require a pick list that displays the User names and pass the corresponding User's ID to that field.

### Defining a pick list

Find out more [here](https://docs.workato.com/developing-connectors/sdk/pick-list.html).

## Configuration Fields

Occassionally, input/output fields depend on user input. For example, the fields for an object depends on the chosen object. Here, we introduce `config_fields`. It is an optional key available in both actions and triggers. Configuration fields is a special type of input field that can be used to generate other dependent input/output fields.

Find out more [here](https://docs.workato.com/developing-connectors/sdk/config-fields.html).

# Coding Style

## User's guide

### Description

The description provides a short summary of what each trigger/action does. When defining the description of a trigger/action, please ensure that the object and the adapter name are emphasized. This also helps in the search for recipes related to a particular adapter name.

Sample code:
```ruby
description: "Search <span class='provider'>candidates</span> in " \
  "<span class='provider'>Greenhouse</span>"
```

### Help

Help text should be added to each trigger/action to provide user an overview of the action, and its limitations (if any). Examples include the differences between two similar actions, or the maximum records that can be returned.

Sample code:
```ruby
help: "Fetches a list of candidates that matches the search criteria. Returns a maximum of 100 records."
```

### Hint

Hints should not be confused with help text. Help text are trigger/action level whereas hint is only applicable for a particular input field that its scope is defined in.

## Ruby Style Guide

Workato's platform runs on Ruby. As such, when creating a SDK connector, developers are advised to adhere to the Ruby style guide so as to speed up the lead time required before your connector can be listed on Workato's developers page. This ensures that it is easy for any other user to understand and to fully utilize the SDK that is developed.

More details on the Ruby style guide can be found [here](https://github.com/rubocop-hq/ruby-style-guide).

### Hound Reviews

Our SDK repository goes through automated review by Hound bot. This checks for compliance with Ruby coding style guide as stated above. Developers are asked to fix all hound comments, with some exceptions:
- Missing magic comment
- Block has too many lines

The following methods are also not yet whitelisted.

| Method | Replace with | Example |
| -- | -- | ------- |
| GET | `get()` | `get("url", parameters)` |
| POST | `post()` | `post("url", payload)` |
| PUT | `put()` | `put("url", payload)` |
| PATCH | `patch()` | `patch("url", payload)` |
| DELETE | `delete()` | `delete("url", parameters)` |
| OPTIONS | `options()` | `options("url", parameters)` |

# Example Adapters

## Basic Authentication Samples
<!-- - [Harvest app connector](https://github.com/workato/connector_sdk/blob/master/basic_auth/harvest_connector.rb)

- [On-prem Security connector](https://github.com/workato/connector_sdk/blob/master/basic_auth/onprem_security.rb)

- [Freshdesk connector](https://github.com/workato/connector_sdk/blob/master/basic_auth/freshdesk_connector.rb)

- [Clearbit connector](https://github.com/workato/connector_sdk/blob/master/basic_auth/clearbit_connector.rb)

- [Close.io connector](https://github.com/workato/connector_sdk/blob/master/basic_auth/close_io_connector.rb)

- [Click Time connector](https://github.com/workato/connector_sdk/blob/master/basic_auth/click_time_connector.rb)

- [Toggl connector](https://github.com/workato/connector_sdk/blob/master/basic_auth/toggl_connector.rb)

- [Unbounce connector](https://github.com/workato/connector_sdk/blob/master/basic_auth/unbounce_connector.rb)

- [Watson Tone Analyzer connector](https://github.com/workato/connector_sdk/blob/master/basic_auth/watson_tone_analyzer_connector.rb)

- [Docparser connector](https://github.com/workato/connector_sdk/blob/master/basic_auth/docparser_connector.rb) -->

## OAuth2 Samples
<!-- - [Podio connector](https://github.com/workato/connector_sdk/blob/master/oauth2/podio_connector.rb)

- [ProductHunt connector](https://github.com/workato/connector_sdk/blob/master/oauth2/producthunt_connector.rb)

- [Accelo connector](https://github.com/workato/connector_sdk/blob/master/oauth2/accelo_connector.rb)

- [Pushbullet connector](https://github.com/workato/connector_sdk/blob/master/oauth2/pushbullet_connector.rb)

- [Wrike connector](https://github.com/workato/connector_sdk/blob/master/oauth2/wrike_connector.rb)

- [Cisco Spark connector](https://github.com/workato/connector_sdk/blob/master/oauth2/cisco_spark_connector.rb)

- [AMcards connector](https://github.com/workato/connector_sdk/blob/master/oauth2/amcards_connector.rb)

- [Wachete connector](https://github.com/workato/connector_sdk/blob/master/oauth2/wachete_connector.rb) -->

## API Key Authentication Samples
<!-- - [Gender API connector](https://github.com/workato/connector_sdk/blob/master/api_key_auth/gender_api_connector.rb)

- [Hipchat connector](https://github.com/workato/connector_sdk/blob/master/custom_auth/hipchat_connector.rb)

- [Codeship connector](https://github.com/workato/connector_sdk/blob/master/api_key_auth/codeship_connector.rb) -->

## Custom Authentication Samples
<!-- - [LoJack app connector](https://github.com/workato/connector_sdk/blob/master/custom_auth/lo_jack_connector.rb)

- [SafetyCulture app connector](https://github.com/workato/connector_sdk/blob/master/custom_auth/safetyculture_connector.rb)

- [Knack HQ connector](https://github.com/workato/connector_sdk/blob/master/custom_auth/knack_hq_connector.rb)

- [Neto connector](https://github.com/workato/connector_sdk/blob/master/custom_auth/neto_connector.rb)

- [TSheets connector](https://github.com/workato/connector_sdk/blob/master/custom_auth/tsheets_connector.rb) -->

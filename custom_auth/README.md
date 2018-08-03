[![Workato](images/workato_logo.png)](https://www.workato.com)

# Introduction

Welcome to the Workato Developer Program website. Here you will get more information about the process of creating / submitting a custom adapter and the resources you need to build application adapters using our SDK.

Alternatively, Workato offers a [HTTP Connector](http://bit.ly/WorkatoHTTPConnector) where you can create your own app connectors without having to code.

## Custom Connector Examples

| Connector | API Type | Authentication Type | Remarks |
| [Action Network connector](https://github.com/workato/custom_connector_docs/blob/master/custom_connectors/api_key_auth/action_network_connector.rb) | -------- | API Key | |
| [Bill.com connector](https://github.com/workato/custom_connector_docs/blob/master/custom_connectors/custom_auth/bill_connector.rb) | -------- | Custom | |
| [BMC Innovation Suite connector](https://github.com/workato/custom_connector_docs/blob/master/custom_connectors/custom_auth/bmc_innovation_suite_connector.rb) | -------- | Custom | |
| [Facebook connector](https://github.com/workato/custom_connector_docs/blob/master/custom_connectors/api_key_auth/facebook_connector.rb) | -------- | API Key | |
| [Freshdesk connector](https://github.com/workato/custom_connector_docs/blob/master/custom_connectors/basic_auth/freshdesk_connector.rb) | -------- | Basic | |
| [Google BigQuery connector](https://github.com/workato/custom_connector_docs/blob/master/custom_connectors/oauth2/google_bigquery_connector.rb) | -------- | OAuth 2.0 | |
| [Harvest connector](https://github.com/workato/custom_connector_docs/blob/master/custom_connectors/oauth2/harvest_connector.rb) | -------- | OAuth 2.0 | |
| [Mandrill connector](https://github.com/workato/custom_connector_docs/blob/master/custom_connectors/api_key_auth/mandrill_connector.rb) | -------- | API Key | |
| [Marketo connector](https://github.com/workato/custom_connector_docs/blob/master/custom_connectors/custom_auth/marketo_connector.rb) | -------- | Custom | |
| [NationBuilder connector](https://github.com/workato/custom_connector_docs/blob/master/custom_connectors/oauth2/nationbuilder_connector.rb) | -------- | OAuth 2.0 | |
| [On-prem Security connector](https://github.com/workato/custom_connector_docs/blob/master/custom_connectors/basic_auth/onprem_security.rb) | -------- | Basic | |
| [RightSignature connector](https://github.com/workato/custom_connector_docs/blob/master/custom_connectors/api_key_auth/rightsignature_connector.rb) | -------- | API Key | |
| [Typeform connector](https://github.com/workato/custom_connector_docs/blob/master/custom_connectors/oauth2/typeform_connector.rb) | -------- | OAuth 2.0 | |

## Process

### Submitting A Custom Adapter

After developing a custom adapter, you may submit it to us by taking the following steps.

1. Create a fork of workato/custom_connector_docs.
2. Upload your files into the correct folders in your own repository.
  - Adapter code: upload under the folder workato/custom_connector_docs/custom_connectors/sdk_code. Take note to follow the naming convention for your connector code: adapter_name_connector.rb
  - Adapter icon: upload under the folder workato/custom_connector_docs/images. Your icon should have the same pixel size for its width and height.
3. Create a Pull Request (PR) into the master branch of workato/custom_connector_docs for your added files.
  - Our SDK repository goes through automated review by Hound bot. This checks for compliance with Ruby coding style guide. Developers are asked to fix all hound comments.
4. Submit your application to us [here](https://developer.workato.com).
  - Set your ticket type to "Submit Custom Adapter"
  - Set your ticket subject as "[New] <Adapter Name> Custom Adapter"
  - Include the link to your PR in the ticket description.

After submitting your request to us, we'd review your application get back to you shortly.

### Enhancements To An Existing Adapter

1. Create a fork of workato/custom_connector_docs (if it hasn't been created).
2. Replace existing file from the folder workato/custom_connector_docs/custom_connectors/sdk_code in your own repository. Take note to follow the naming convention for your connector code: adapter_name_connector.rb
3. Create a PR into the master branch of workato/custom_connector_docs for your added file.
  - Our SDK repository goes through automated review by Hound bot. This checks for compliance with Ruby coding style guide. Developers are asked to fix all hound comments.
4. Submit your application to us [here](https://developer.workato.com).
  - Set your ticket type to "Submit Custom Adapter"
  - Set your ticket subject as "[Enhancement] <Adapter Name> Custom Adapter"
  - Include the link to your PR in the ticket description.

After submitting your request to us, we'd review your application get back to you shortly.

# Basic Information

## Table Of Contents
1. [Introduction](https://docs.workato.com/workato-concepts.html)
  .. [Recipe](https://docs.workato.com/workato-concepts.html#recipes)
  .. [Trigger](https://docs.workato.com/workato-concepts.html#triggers)
  .. [Action](https://docs.workato.com/workato-concepts.html#steps-and-actions)
2. [Custom Adapter Introduction](https://docs.workato.com/developing-connectors/sdk.html)
  .. [Format](https://docs.workato.com/developing-connectors/sdk.html#format)
  .. [Pagination](https://docs.workato.com/developing-connectors/sdk.html#pagination)
  .. [Query](https://docs.workato.com/developing-connectors/sdk.html#query)
3. [Authentication](https://docs.workato.com/developing-connectors/sdk/authentication.html)
  .. [Basic Authentication](https://docs.workato.com/developing-connectors/sdk/authentication/basic-authentication.html)
  .. [API Key Authentication](https://docs.workato.com/developing-connectors/sdk/authentication/basic-authentication.html#api-key-authentication)
  .. [OAuth 2.0](https://docs.workato.com/developing-connectors/sdk/authentication/oauth2-authentication.html)
  .. [Custom Authentication](https://docs.workato.com/developing-connectors/sdk/authentication/custom-authentication.html)
  .. [Test](https://docs.workato.com/developing-connectors/sdk/authentication/test.html)
4. Building Custom adapters
  .. [Trigger](https://docs.workato.com/developing-connectors/sdk/trigger.html)
    .... [Poll Trigger](https://docs.workato.com/developing-connectors/sdk/trigger/poll-trigger.html)
    .... [Dynamic Webhook Trigger](https://docs.workato.com/developing-connectors/sdk/trigger/webhook-trigger.html)
    .... [Static Webhook Trigger](https://docs.workato.com/developing-connectors/sdk/trigger/static-webhook-trigger.html)
  .. [Action](https://docs.workato.com/developing-connectors/sdk/action.html)
    .... [Endpoints](https://docs.workato.com/developing-connectors/sdk/action.html#endpoints)
    .... [Body](https://docs.workato.com/developing-connectors/sdk/action.html#body)
  .. [Methods](https://docs.workato.com/developing-connectors/sdk/methods.html)
  .. [Pick Lists](https://docs.workato.com/developing-connectors/sdk/pick-list.html)
  .. [Static Pick List](https://docs.workato.com/developing-connectors/sdk/pick-list.html#static-example)
  .. [Dynamic Pick List](https://docs.workato.com/developing-connectors/sdk/pick-list.html#dynamic-example)
  .. [Dependent Pick Lists](https://docs.workato.com/developing-connectors/sdk/dependent-pick-list.html)
    .... [Static Pick List](https://docs.workato.com/developing-connectors/sdk/dependent-pick-list.html#static-example)
    .... [Dynamic Pick List](https://docs.workato.com/developing-connectors/sdk/dependent-pick-list.html#dynamic-example)
  .. [Configuration Fields](https://docs.workato.com/developing-connectors/sdk/config-fields.html).

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

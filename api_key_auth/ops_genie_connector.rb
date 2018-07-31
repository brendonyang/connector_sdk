{
  title: "OpsGenie",

  connection: {
    fields: [
      {
        name: "key",
        hint: "Your OpsGenie API Key",
        optional: false
      }
    ],

    authorization: {
      type: "api_key",

      credentials: ->(connection) {
        headers("Authorization": "GenieKey " + connection["key"])
      }
    },

    base_uri: lambda do
      "https://api.opsgenie.com"
    end
  },

  test: ->() {
    get("/v2/alerts")
  },

  object_definitions: {
    alert: {
      fields: lambda do |_connection, _config_fields|
        [
          { name: "message", optional: false },
          { name: "alias" },
          { name: "description" },
          { name: "responders", type: :object, properties: [
              { name: "id" },
              { name: "name" },
              { name: "username" },
              { name: "type" },
          ] },
          { name: "visibleTo", type: :object, properties: [
              { name: "id" },
              { name: "name" },
              { name: "username" },
              { name: "type" },
          ] },
          { name: "entity" },
          { name: "priority", control_type: "select", pick_list: "priorities" }
        ]
      end
    }
  },

  actions: {
    create_alert: {
      title: "Create an alert",
      description: "Create <span class='provider'>alert</span> in " \
      "<span class='provider'>OpsGenie</span>",

      input_fields: ->(object_definitions) {
        object_definitions["alert"]
      },

      execute: ->(connection,input) {
        post("https://api.opsgenie.com/v2/alerts", input)
      },

      output_fields: lambda do |_object_definitions|
        [
          { name: "result" },
          { name: "took", type: "number" },
          { name: "requestId" }
        ]
      end,

      sample_output: lambda do |_object_definitions|
        {
          "result": "Request will be processed",
          "took": 0.302,
          "requestId": "43a29c5c-3dbf-4fa4-9c26-f4f71023e120"
        }
      end
    }
  },

  pick_lists: {
    priorities: lambda do |connection|
    [
      %w[P1 P1],
      %w[P2 P2],
      %w[P3 P3],
      %w[P4 P4],
      %w[P5 P5]
    ]
    end
  }
}

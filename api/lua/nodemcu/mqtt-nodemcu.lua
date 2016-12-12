return {
  mqtt = {
    type = "lib",
    childs = {

      Client = {
        type = "function",
        description = "Creates a MQTT client.",
        args = "(filename: string [, mode: string])",
        returns = "(file|nil [, string])",
        valuetype = "_MqttClient",
      },
    },
  },

  _MqttClient = {
    type = class,
    childs = {
      close = {
        type = "method",
        description = "Closes connection to the broker.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      connect = {
        type = "method",
        description = "Connects to the broker specified by the given host, port, and secure options.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },


      lwt = {
        type = "method",
        description = "Setup [Last Will and Testament](http://www.hivemq.com/blog/mqtt-essentials-part-9-last-will-and-testament) (optional). A broker will publish a message with qos = 0, retain = 0, data = offline to topic /lwt if client does not send keepalive packet.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      on = {
        type = "method",
        description = "Registers a callback function for an event.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      publish = {
        type = "method",
        description = "Publishes a message.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      subscribe = {
        type = "method",
        description = "Subscribes to one or several topics.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      unsubscribe = {
        type = "method",
        description = "Unsubscribes from one or several topics.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },
    },
  },
}

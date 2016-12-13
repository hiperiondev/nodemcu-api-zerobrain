-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  http = {
    type = "lib",
    childs = {

      delete = {
        type = "function",
        description = "Executes a HTTP DELETE request. Note that concurrent requests are not supported.",
        returns = "nil",
      },

      get = {
        type = "function",
        description = "Executes a HTTP GET request. Note that concurrent requests are not supported.",
        returns = "nil",
      },

      post = {
        type = "function",
        description = "Executes a HTTP POST request. Note that concurrent requests are not supported.",
        returns = "nil",
      },

      put = {
        type = "function",
        description = "Executes a HTTP PUT request. Note that concurrent requests are not supported.",
        returns = "nil",
      },

      request = {
        type = "function",
        description = "Execute a custom HTTP request for any HTTP method. Note that concurrent requests are not supported.",
        returns = "nil",
      },

    },

  },
}

-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  ws2801 = {
    type = "lib",
    childs = {

      init = {
        type = "function",
        description = "Initializes the module and sets the pin configuration.",
        returns = "nil",
      },

      write = {
        type = "function",
        description = "Sends a string of RGB Data in 24 bits to WS2801. Don't forget to call ws2801.init() before.",
        returns = "nil",
      },

    },

  },
}

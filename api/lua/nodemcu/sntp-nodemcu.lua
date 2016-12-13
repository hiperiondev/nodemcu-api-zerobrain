-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  sntp = {
    type = "lib",
    childs = {

      sync = {
        type = "function",
        description = "Attempts to obtain time synchronization.",
        returns = "nil",
      },

    },

  },
}

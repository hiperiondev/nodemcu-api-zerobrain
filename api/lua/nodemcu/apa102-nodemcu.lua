-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  apa102 = {
    type = "lib",
    childs = {

      write = {
        type = "function",
        description = "Send ABGR data in 8 bits to a APA102 chain.",
        returns = "nil",
      },

    },

  },
}

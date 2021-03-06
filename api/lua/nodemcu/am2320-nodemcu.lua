-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  am2320 = {
    type = "lib",
    childs = {

      init = {
        type = "function",
        description = "Initializes the module and sets the pin configuration. Returns model, version, serial but is seams these where all zero on my model.",
        returns = "- model  16 bits number of model , - version  8 bits version number , - serial  32 bits serial number ,    Note: I have only observed values of 0 for all of these, maybe other sensors return more sensible readings.",
      },

      read = {
        type = "function",
        description = "Samples the sensor and returns the relative humidity in % and temperature in celsius, as an integer multiplied with 10.",
        returns = "- relative humidity percentage multiplied with 10 (integer) , - temperature in celcius multiplied with 10 (integer)",
      },

    },

  },
}

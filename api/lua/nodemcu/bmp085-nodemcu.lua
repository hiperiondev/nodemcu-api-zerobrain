-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  bmp085 = {
    type = "lib",
    childs = {

      init = {
        type = "function",
        description = "Initializes the module and sets the pin configuration.",
        returns = "nil",
      },

      temperature = {
        type = "function",
        description = "Samples the sensor and returns the temperature in celsius as an integer multiplied with 10.",
        returns = "temperature multiplied with 10 (integer)",
      },

      pressure = {
        type = "function",
        description = "Samples the sensor and returns the pressure in pascal as an integer. , The optional oversampling_setting parameter determines for how long time the sensor samples data. , The default is 3 which is the longest sampling setting. Possible values are 0, 1, 2, 3. , See the data sheet for more information.",
        returns = "pressure in pascals (integer)",
      },

      pressure_raw = {
        type = "function",
        description = "Samples the sensor and returns the raw pressure in internal units. Might be useful if you need higher precision.",
        returns = "raw pressure sampling value (integer)",
      },

    },

  },
}

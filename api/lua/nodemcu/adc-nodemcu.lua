-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  adc = {
    type = "lib",
    childs = {

      force_init_mode = {
        type = "function",
        description = "Checks and if necessary reconfigures the ADC mode setting in the ESP init data block.",
        returns = "True if the function had to change the mode, false if the mode was already configured. On a true return the ESP needs to be restarted for the change to take effect.",
      },

      read = {
        type = "function",
        description = "Samples the ADC.",
        returns = "the sampled value (number) , If the ESP8266 has been configured to use the ADC for reading the system voltage, this function will always return 65535. This is a hardware and/or SDK limitation.",
      },

      readvdd33 = {
        type = "function",
        description = "Reads the system voltage.",
        returns = "system voltage in millivolts (number) , If the ESP8266 has been configured to use the ADC for sampling the external pin, this function will always return 65535. This is a hardware and/or SDK limitation.",
      },

    },

  },
}

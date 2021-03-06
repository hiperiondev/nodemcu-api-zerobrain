-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  tsl2561 = {
    type = "lib",
    childs = {

      getlux = {
        type = "function",
        description = "Reads sensor values from the device and returns calculated lux value.",
        returns = "- lux the calculated illuminance in lux (lx) , - status value indicating success or failure as explained below: ,     * tsl2561.TSL2561_OK ,     * tsl2561.TSL2561_ERROR_I2CINIT can't initialize I²C bus ,     * tsl2561.TSL2561_ERROR_I2CBUSY I²C bus busy ,     * tsl2561.TSL2561_ERROR_NOINIT initialize I²C bus before calling function ,     * tsl2561.TSL2561_ERROR_LAST",
      },

      getrawchannels = {
        type = "function",
        description = "Reads the device's 2 sensors and returns their values.",
        returns = "- ch0 value of the broad spectrum sensor , - ch1 value of the IR sensor , - status value indicating success or failure as explained below: ,     * tsl2561.TSL2561_OK ,     * tsl2561.TSL2561_ERROR_I2CINIT can't initialize I²C bus ,     * tsl2561.TSL2561_ERROR_I2CBUSY I²C bus busy ,     * tsl2561.TSL2561_ERROR_NOINIT initialize I²C bus before calling function ,     * tsl2561.TSL2561_ERROR_LAST",
      },

      init = {
        type = "function",
        description = "Initializes the device on pins sdapin & sclpin. Optionally also configures the devices address and package. Default: address pin floating (0x39) and FN package.",
        returns = "status value indicating success or failure as explained below: , - tsl2561.TSL2561_OK , - tsl2561.TSL2561_ERROR_I2CINIT can't initialize I²C bus , - tsl2561.TSL2561_ERROR_I2CBUSY I²C bus busy , - tsl2561.TSL2561_ERROR_NOINIT Initialize I²C bus before calling function , - tsl2561.TSL2561_ERROR_LAST",
      },

      settiming = {
        type = "function",
        description = "Sets the integration time and gain settings of the device. When tls2561.init() is called, these values default to 402 ms and no gain.",
        returns = "status value indicating success or failure as explained below: , - tsl2561.TSL2561_OK , - tsl2561.TSL2561_ERROR_I2CINIT can't initialize I²C bus , - tsl2561.TSL2561_ERROR_I2CBUSY I²C bus busy , - tsl2561.TSL2561_ERROR_NOINIT initialize I²C bus before calling function , - tsl2561.TSL2561_ERROR_LAST",
      },

    },

  },
}

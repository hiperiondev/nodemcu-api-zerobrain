return {
  bme280 = {
    type = "lib",
    childs = {

      altitude = {
        type = "function",
        description = "For given air pressure and sea level air pressure returns the altitude in meters as an integer multiplied with 100, i.e. altimeter function.",
        returns = "altitude in meters of measurement point",
      },

      baro = {
        type = "function",
        description = "Reads the sensor and returns the air temperature in hectopascals as an integer multiplied with 1000 or nil when readout is not successful. , Current temperature is needed to calculate the air pressure so temperature reading is performed prior reading pressure data. Second returned variable is therefore current temperature.",
        returns = "- P air pressure in hectopascals multiplied by 1000 , - T temperature in celsius as an integer multiplied with 100",
      },

      dewpoint = {
        type = "function",
        description = "For given temperature and relative humidity returns the dew point in celsius as an integer multiplied with 100.",
        returns = "dew point in celsisus",
      },

      humi = {
        type = "function",
        description = "Reads the sensor and returns the air relative humidity in percents as an integer multiplied with 100 or nil when readout is not successful. , Current temperature is needed to calculate the relative humidity so temperature reading is performed prior reading pressure data. Second returned variable is therefore current temperature.",
        returns = "- H last relative humidity reading in % times 1000 , - T temperature in celsius as an integer multiplied with 100",
      },

      init = {
        type = "function",
        description = "Initializes module. Initialization is mandatory before read values.",
        returns = "nil if initialization has failed (no sensor connected?), 2 if sensor is BME280, 1 if sensor is BMP280",
      },

      qfe2qnh = {
        type = "function",
        description = "For given altitude converts the air pressure to sea level air pressure.",
        returns = "sea level pressure",
      },

      startreadout = {
        type = "function",
        description = "Starts readout (turns the sensor into forced mode). After the readout the sensor turns to sleep mode.",
        returns = "nil",
      },

      temp = {
        type = "function",
        description = "Reads the sensor and returns the temperature in celsius as an integer multiplied with 100.",
        returns = "- T temperature in celsius as an integer multiplied with 100 or nil when readout is not successful , - t_fine temperature measure used in pressure and humidity compensation formulas (generally no need to use this value)",
      },

    },

  },
}

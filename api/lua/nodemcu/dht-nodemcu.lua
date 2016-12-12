return {
  dht = {
    type = "lib",
    childs = {

      read = {
        type = "function",
        description = "Read all kinds of DHT sensors, including DHT11, 21, 22, 33, 44 humidity temperature combo sensor.",
        returns = "- status as defined in Constants , - temp temperature (see note below) , - humi humidity (see note below) , - temp_dec temperature decimal , - humi_dec humidity decimal , !!! note Note ,     If using float firmware then temp and humi are floating point numbers. On an integer firmware, the final values have to be concatenated from temp and temp_dec / humi and hum_dec.",
      },

      read11 = {
        type = "function",
        description = "Read DHT11 humidity temperature combo sensor.",
        returns = "- status as defined in Constants , - temp temperature (see note below) , - humi humidity (see note below) , - temp_dec temperature decimal , - humi_dec humidity decimal , !!! note Note ,     If using float firmware then temp and humi are floating point numbers. On an integer firmware, the final values have to be concatenated from temp and temp_dec / humi and hum_dec.",
      },

      readxx = {
        type = "function",
        description = "Read all kinds of DHT sensors, except DHT11.",
        returns = "- status as defined in Constants , - temp temperature (see note below) , - humi humidity (see note below) , - temp_dec temperature decimal , - humi_dec humidity decimal , !!! note Note ,     If using float firmware then temp and humi are floating point numbers. On an integer firmware, the final values have to be concatenated from temp and temp_dec / humi and hum_dec.",
      },

    },

  },
}

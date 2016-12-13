-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  struct = {
    type = "lib",
    childs = {

      pack = {
        type = "function",
        description = "Returns a string containing the values d1, d2, etc. packed , according to the format string fmt.",
        returns = "The packed string.",
      },

      unpack = {
        type = "function",
        description = "Returns the values packed in string s according to the format , string fmt. An optional i marks where in s to start reading , (default is 1). After the read values, this function also returns , the index in s where it stopped reading, which is also where you , should start to read the rest of the string.",
        returns = "All the unpacked data.",
      },

      size = {
        type = "function",
        description = "Returns the size of a string formatted according to the format , string fmt. The format string should contain neither the option , s nor the option c0.",
        returns = "The size of the string that would be output in a pack operation with this format string.",
      },

    },

  },
}

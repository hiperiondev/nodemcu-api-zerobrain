-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  cjson = {
    type = "lib",
    childs = {

      encode = {
        type = "function",
        description = "Encode a Lua table to a JSON string. For details see the [documentation of the original Lua library](http://kyne.com.au/~mark/software/lua-cjson-manual.html#encode).",
        returns = "JSON string",
      },

      decode = {
        type = "function",
        description = "Decode a JSON string to a Lua table. For details see the [documentation of the original Lua library](http://kyne.com.au/~mark/software/lua-cjson-manual.html#_decode).",
        returns = "Lua table representation of the JSON data",
      },

    },

  },
}

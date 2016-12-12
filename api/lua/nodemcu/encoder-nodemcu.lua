return {
  encoder = {
    type = "lib",
    childs = {

      toBase64 = {
        type = "function",
        description = "Provides a Base64 representation of a (binary) Lua string.",
      },

      fromBase64 = {
        type = "function",
        description = "Decodes a Base64 representation of a (binary) Lua string back into the original string.  An error is , thrown if the string is not a valid base64 encoding.",
      },

      toHex = {
        type = "function",
        description = "Provides an ASCII hex representation of a (binary) Lua string. Each byte in the input string is , represented as two hex characters in the output.",
        returns = "An ASCII hex string.",
      },

      fromHex = {
        type = "function",
        description = "Returns the Lua binary string decode of a ASCII hex string. Each byte in the output string is , represented as two hex characters in the input.  An error is thrown if the string is not a  , valid base64 encoding.",
        returns = "Decoded string of hex representation.",
      },

    },
  },
}

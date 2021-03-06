-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  coap = {
    type = "lib",
    description = "The I/O library provides two different styles for file manipulation.",
    childs = {
      Client = {
        type = "function",
        args = "(filename: string [, mode: string])",
        returns = "(file|nil [, string])",
        valuetype = "_CoapClient",
      },

      Server = {
        type = "function",
        description = "Creates a CoAP server.",
        args = "(filename: string [, mode: string])",
        returns = "(file|nil [, string])",
        valuetype = "_CoapServer",
      },

      crypto = {
        type = "lib",
        childs = {

          encrypt = {
            type = "function",
            description = "Encrypts Lua strings.",
            returns = "The encrypted data as a binary string. For AES this is always a multiple of 16 bytes in length.",
          },

          decrypt = {
            type = "function",
            description = "Decrypts previously encrypted data.",
            returns = "The decrypted string. , Note that the decrypted string may contain extra zero-bytes of padding at the end. One way of stripping such padding is to use :match((.-)%z*$) on the decrypted string. Additional care needs to be taken if working on binary data, in which case the real length likely needs to be encoded with the data, and at which point :sub(1, n) can be used to strip the padding.",
          },

          fhash = {
            type = "function",
            description = "Compute a cryptographic hash of a a file.",
            returns = "A binary string containing the message digest. To obtain the textual version (ASCII hex characters), please use [crypto.toHex()](#cryptotohex ).",
          },

          hash = {
            type = "function",
            description = "Compute a cryptographic hash of a Lua string.",
            returns = "A binary string containing the message digest. To obtain the textual version (ASCII hex characters), please use [crypto.toHex()](#cryptotohex  ).",
          },

          new_hash = {
            type = "function",
            description = "Create a digest/hash object that can have any number of strings added to it. Object has update and finalize functions.",
            returns = "Userdata object with update and finalize functions available.",
          },

          hmac = {
            type = "function",
            description = "Compute a [HMAC](https://en.wikipedia.org/wiki/Hash-based_message_authentication_code) (Hashed Message Authentication Code) signature for a Lua string.",
            returns = "A binary string containing the HMAC signature. Use [crypto.toHex()](#cryptotohex ) to obtain the textual version.",
          },

          mask = {
            type = "function",
            description = "Applies an XOR mask to a Lua string. Note that this is not a proper cryptographic mechanism, but some protocols may use it nevertheless.",
            returns = "The masked message, as a binary string. Use [crypto.toHex()](#cryptotohex) to get a textual representation of it.",
          },

          toBase64 = {
            type = "function",
            description = "Provides a Base64 representation of a (binary) Lua string.",
          },

          toHex = {
            type = "function",
            description = "Provides an ASCII hex representation of a (binary) Lua string. Each byte in the input string is represented as two hex characters in the output.",
            returns = "An ASCII hex string.",
          },
        },
      },

    },
  },

  _CoapClient = {
    type = "class",
    childs = {
      get = {
        type = "function",
        description = "Issues a GET request to the server.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      put = {
        type = "function",
        description = "Issues a PUT request to the server.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      post = {
        type = "function",
        description = "Issues a POST request to the server.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      delete = {
        type = "function",
        description = "Issues a DELETE request to the server.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },
    },
  },

  _CoapServer = {
    type = class,
    childs = {

      listen = {
        type = "method",
        description = "Starts the CoAP server on the given port.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      close = {
        type = "method",
        description = "Closes the CoAP server.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      var = {
        type = "method",
        description = "Registers a Lua variable as an endpoint in the server. the variable value then can be retrieved by a client via GET method, represented as an [URI](http://tools.ietf.org/html/rfc7252#section-6) to the client. The endpoint path for varialble is '/v1/v/'.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      func = {
        type = "method",
        description = "Registers a Lua function as an endpoint in the server. The function then can be called by a client via POST method. represented as an [URI](http://tools.ietf.org/html/rfc7252#section-6) to the client. The endpoint path for function is '/v1/f/'.  , When the client issues a POST request to this URI, the payload will be passed to the function as parameter. The function's return value will be the payload in the message to the client. , The function registered SHOULD accept ONLY ONE string type parameter, and return ONE string value or return nothing.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },
    },
  },
}

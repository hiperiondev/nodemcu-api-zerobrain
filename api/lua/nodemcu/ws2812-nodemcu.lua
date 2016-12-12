return {
  ws2812 = {
    type = "lib",
    childs = {

      init = {
        type = "function",
        description = "Initialize UART1 and GPIO2, should be called once and before write()",
        returns = "nil",
      },

      write = {
        type = "function",
        description = "Send data to a led strip using its native format which is generally Green,Red,Blue for RGB strips , and Green,Red,Blue,White for RGBW strips.",
        returns = "nil",
      },

      newBuffer = {
        type = "function",
        description = "Allocate a new memory buffer to store led values.",
        returns = "ws2812.buffer",
      },

      buffer = {
        type = "function",
        args = "(filename: string [, mode: string])",
        returns = "(file|nil [, string])",
        valuetype = "_Ws2812Buffer",
      },
    },
  },

  _Ws2812Buffer = {
    type = "class",
    childs = {
      get = {
        type = "method",
        description = "Return the value at the given position",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      set = {
        type = "method",
        description = "Set the value at the given position",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      size = {
        type = "method",
        description = "Return the size of the buffer in number of leds",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      fill = {
        type = "method",
        description = "Fill the buffer with the given color. , The number of given bytes must match the number of bytesPerLed of the buffer",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      fade = {
        type = "method",
        description = "Divide each byte of each led by the given value. Useful for a fading effect",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      write = {
        type = "method",
        description = "Output the buffer to the led strip",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },
    },
  },

}

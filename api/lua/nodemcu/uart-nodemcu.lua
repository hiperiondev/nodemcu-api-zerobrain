return {
  uart = {
    type = "lib",
    childs = {

      alt = {
        type = "function",
        description = "Change UART pin assignment.",
        returns = "nil",
      },

      on = {
        type = "function",
        description = "Sets the callback function to handle UART events. , Currently only the data event is supported.",
        returns = "nil",
      },

      setup = {
        type = "function",
        returns = "configured baud rate (number)",
      },

      write = {
        type = "function",
        description = "Write string or byte to the UART.",
        returns = "nil",
      },

    },

  },
}

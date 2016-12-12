return {
  hx711 = {
    type = "lib",
    childs = {

      init = {
        type = "function",
        description = "Initialize io pins for hx711 clock and data.",
        returns = "nil",
      },

      read = {
        type = "function",
        description = "Read digital loadcell ADC value.",
        returns = "a number (24 bit signed ADC value extended to the machine int size)",
      },

    },

  },
}

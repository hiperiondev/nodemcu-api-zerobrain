-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  gpio = {
    type = "lib",
    childs = {

      mode = {
        type = "function",
        description = "Initialize pin to GPIO mode, set the pin in/out direction, and optional internal weak pull-up.",
        returns = "nil",
      },

      read = {
        type = "function",
        description = "Read digital GPIO pin value.",
        returns = "a number, 0 = low, 1 = high",
      },

      serout = {
        type = "function",
        description = "Serialize output based on a sequence of delay-times. After each delay, the pin is toggled.",
        returns = "nil",
      },

      trig = {
        type = "function",
        description = "Establish or clear a callback function to run on interrupt for a pin. , This function is not available if GPIO_INTERRUPT_ENABLE was undefined at compile time.",
        returns = "nil",
      },

      write = {
        type = "function",
        description = "Set digital GPIO pin value.",
        returns = "nil",
      },

    },

  },
}

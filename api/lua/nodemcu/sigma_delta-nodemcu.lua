-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  sigma_delta = {
    type = "lib",
    childs = {

      close = {
        type = "function",
        description = "Stops signal generation and reenables GPIO functionality at the specified pin.",
        returns = "nil",
      },

      setprescale = {
        type = "function",
        description = "Sets the prescale value.",
        returns = "nil",
      },

      setpwmduty = {
        type = "function",
        description = "Operate the sigma-delta module in PWM-like mode with fixed base frequency.",
        returns = "nil",
      },

      settarget = {
        type = "function",
        description = "Sets the target value.",
        returns = "nil",
      },

      setup = {
        type = "function",
        description = "Stops the signal generator and routes it to the specified pin.",
        returns = "nil",
      },

    },

  },
}

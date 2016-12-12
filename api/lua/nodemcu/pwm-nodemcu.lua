return {
  pwm = {
    type = "lib",
    childs = {

      close = {
        type = "function",
        description = "Quit PWM mode for the specified GPIO pin.",
        returns = "nil",
      },

      getclock = {
        type = "function",
        description = "Get selected PWM frequency of pin.",
        returns = "number PWM frequency of pin",
      },

      getduty = {
        type = "function",
        description = "Get selected duty cycle of pin.",
        returns = "number duty cycle, max 1023",
      },

      setclock = {
        type = "function",
        description = "Set PWM frequency. , **Note:** Setup of the PWM frequency will synchronously change other setups as well if there are any. Only one PWM frequency can be allowed for the system.",
        returns = "nil",
      },

      setduty = {
        type = "function",
        description = "Set duty cycle for a pin.",
        returns = "nil",
      },

      setup = {
        type = "function",
        description = "Set pin to PWM mode. Only 6 pins can be set to PWM mode at the most.",
        returns = "nil",
      },

      start = {
        type = "function",
        description = "PWM starts, the waveform is applied to the GPIO pin.",
        returns = "nil",
      },

      stop = {
        type = "function",
        description = "Pause the output of the PWM waveform.",
        returns = "nil",
      },

    },

  },
}
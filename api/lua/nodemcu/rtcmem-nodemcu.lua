return {
  rtcmem = {
    type = "lib",
    childs = {

      read32 = {
        type = "function",
        description = "Reads one or more 32bit values from RTC user memory.",
        returns = "The value(s) read from RTC user memory. , If idx is outside the valid range [0,127] this function returns nothing. , If num results in overstepping the end of available memory, the function only returns the data from the valid slots.",
      },

      write32 = {
        type = "function",
        description = "Writes one or more values to RTC user memory, starting at index idx. , Writing to indices outside the valid range [0,127] has no effect.",
        returns = "nil",
      },

    },

  },
}

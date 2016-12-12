return {
  bit = {
    type = "lib",
    childs = {

      arshift = {
        type = "function",
        description = "Arithmetic right shift a number equivalent to value >> shift in C.",
        returns = "the number shifted right (arithmetically)",
      },

      band = {
        type = "function",
        description = "Bitwise AND, equivalent to val1 & val2 & ... & valn in C.",
        returns = "the bitwise AND of all the arguments (number)",
      },

      bit = {
        type = "function",
        description = "Generate a number with a 1 bit (used for mask generation). Equivalent to 1 << position in C.",
        returns = "a number with only one 1 bit at position (the rest are set to 0)",
      },

      bnot = {
        type = "function",
        description = "Bitwise negation, equivalent to ~value in C.",
        returns = "the bitwise negated value of the number",
      },

      bor = {
        type = "function",
        description = "Bitwise OR, equivalent to val1 | val2 | ... | valn in C.",
        returns = "the bitwise OR of all the arguments (number)",
      },

      bxor = {
        type = "function",
        description = "Bitwise XOR, equivalent to val1 ^ val2 ^ ... ^ valn in C.",
        returns = "the bitwise XOR of all the arguments (number)",
      },

      clear = {
        type = "function",
        description = "Clear bits in a number.",
        returns = "the number with the bit(s) cleared in the given position(s)",
      },

      isclear = {
        type = "function",
        description = "Test if a given bit is cleared.",
        returns = "true if the bit at the given position is 0, false othewise",
      },

      isset = {
        type = "function",
        description = "Test if a given bit is set.",
        returns = "true if the bit at the given position is 1, false otherwise",
      },

      lshift = {
        type = "function",
        description = "Left-shift a number, equivalent to value << shift in C.",
        returns = "the number shifted left",
      },

      rshift = {
        type = "function",
        description = "Logical right shift a number, equivalent to ( unsigned )value >> shift in C.",
        returns = "the number shifted right (logically)",
      },

      set = {
        type = "function",
        description = "Set bits in a number.",
        returns = "the number with the bit(s) set in the given position(s)",
      },

    },

  },
}

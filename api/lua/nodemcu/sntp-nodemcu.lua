return {
  sntp = {
    type = "lib",
    childs = {

      sync = {
        type = "function",
        description = "Attempts to obtain time synchronization.",
        returns = "nil",
      },

    },

  },
}

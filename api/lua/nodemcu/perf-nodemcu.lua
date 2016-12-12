return {
  perf = {
    type = "lib",
    childs = {

      start = {
        type = "function",
        description = "Starts a performance monitoring session. ",
        returns = "Nothing",
      },

      stop = {
        type = "function",
        description = "Terminates a performance monitoring session and returns the histogram.",
        returns = "- total The total number of samples captured in this run , - outside The number of samples that were outside the histogram range , - histogram The histogram represented as a table indexed by address where the value is the number of samples. The address is the lowest address for the bin. , - binsize The number of bytes per histogram bin.",
      },

    },

  },
}
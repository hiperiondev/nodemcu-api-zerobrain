-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  rtcfifo = {
    type = "lib",
    childs = {

      dsleep_until_sample = {
        type = "function",
        description = "When the rtcfifo module is compiled in together with the rtctime module, this convenience function is available. It allows for some measure of separation of concerns, enabling writing of modularized Lua code where a sensor reading abstraction may not need to be aware of the sample frequency (which is largely a policy decision, rather than an intrinsic of the sensor). Use of this function is effectively equivalent to [rtctime.dsleep_aligned(interval_us, minsleep_us)](rtctime.md#rtctimedsleep_aligned) where interval_us is what was given to [rtcfifo.prepare()](#rtcfifoprepare).",
      },

      peek = {
        type = "function",
        description = "Reads a sample from the rtcfifo. An offset into the rtcfifo may be specified, but by default it reads the first sample (offset 0).",
        returns = "The values returned match the input arguments used to [rtcfifo.put()](#rtcfifoput). , - timestamp timestamp in seconds , - value the value , - neg_e scaling factor , - name sensor name , If no sample is available (at the specified offset), nothing is returned.",
      },

      pop = {
        type = "function",
        description = "Reads the first sample from the rtcfifo, and removes it from there.",
        returns = "The values returned match the input arguments used to [rtcfifo.put()](#rtcfifoput). , - timestamp timestamp in seconds , - value the value , - neg_e scaling factor , - name sensor name",
      },

      prepare = {
        type = "function",
        description = "Initializes the rtcfifo module for use. , Calling [rtcfifo.prepare()](#rtcfifoprepare) unconditionally re-initializes the storage - any samples stored are discarded.",
        returns = "nil",
      },

      put = {
        type = "function",
        description = "Puts a sample into the rtcfifo. , If the rtcfifo has not been prepared, this function does nothing.",
        returns = "nil",
      },

      ready = {
        type = "function",
        description = "Returns non-zero if the rtcfifo has been prepared and is ready for use, zero if not.",
        returns = "Non-zero if the rtcfifo has been prepared and is ready for use, zero if not.",
      },

    },

  },
}

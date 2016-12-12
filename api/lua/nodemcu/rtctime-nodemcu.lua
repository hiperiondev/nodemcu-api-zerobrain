return {
  rtctime = {
    type = "lib",
    childs = {

      dsleep = {
        type = "function",
        description = "Puts the ESP8266 into deep sleep mode, like [node.dsleep()](node.md#nodedsleep). It differs from [node.dsleep()](node.md#nodedsleep) in the following ways: , - Time is kept across the deep sleep. I.e. [rtctime.get()](#rtctimeget) will keep working (provided time was available before the sleep). , - This call never returns. The module is put to sleep immediately. This is both to support accurate time keeping and to reduce power consumption. , - The time slept will generally be considerably more accurate than with [node.dsleep()](node.md#nodedsleep). , - A sleep time of zero does not mean indefinite sleep, it is interpreted as a zero length sleep instead.",
        returns = "This function does not return.",
      },

      dsleep_aligned = {
        type = "function",
        description = "For applications where it is necessary to take samples with high regularity, this function is useful. It provides an easy way to implement a wake up on the next 5-minute boundary scheme, without having to explicitly take into account how long the module has been active for etc before going back to sleep.",
      },

      get = {
        type = "function",
        description = "Returns the current time. If current time is not available, zero is returned.",
        returns = "A two-value timestamp containing: , - sec seconds since the Unix epoch , - usec the microseconds part",
      },

      set = {
        type = "function",
        description = "Sets the rtctime to a given timestamp in the Unix epoch (i.e. seconds from midnight 1970/01/01). If the module is not already keeping time, it starts now. If the module was already keeping time, it uses this time to help adjust its internal calibration values. Care is taken that timestamps returned from [rtctime.get()](#rtctimeget) *never go backwards*. If necessary, time is slewed and gradually allowed to catch up. , It is highly recommended that the timestamp is obtained via NTP (see [SNTP module](sntp.md)), GPS, or other highly accurate time source. , Values very close to the epoch are not supported. This is a side effect of keeping the memory requirements as low as possible. Considering that it's no longer 1970, this is not considered a problem.",
        returns = "nil",
      },

    },

  },
}

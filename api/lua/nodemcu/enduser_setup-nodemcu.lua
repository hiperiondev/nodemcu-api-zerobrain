return {
  enduser_setup = {
    type = "lib",
    childs = {

      manual = {
        type = "function",
        description = "Controls whether manual AP configuration is used. , By default the enduser_setup module automatically configures an open access point when starting, and stops it when the device has been successfully joined to a WiFi network. If manual mode has been enabled, neither of this is done. The device must be manually configured for wifi.SOFTAP mode prior to calling enduser_setup.start(). Additionally, the portal is not stopped after the device has successfully joined to a WiFi network.",
        returns = "The current setting, true if manual mode is enabled, false if it is not.",
      },

      start = {
        type = "function",
        description = "Starts the captive portal.",
        returns = "nil",
      },

      stop = {
        type = "function",
        description = "Stops the captive portal.",
        returns = "nil",
      },

    },
  },
}

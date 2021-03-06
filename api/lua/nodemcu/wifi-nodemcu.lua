-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  wifi = {
    type = "lib",
    childs = {
      getchannel = {
        type = "function",
        description = "Gets the current WiFi channel.",
        returns = "current WiFi channel",
      },

      getmode = {
        type = "function",
        description = "Gets WiFi operation mode.",
        returns = "The WiFi mode, as one of the wifi.STATION, wifi.SOFTAP, wifi.STATIONAP or wifi.NULLMODE constants.",
      },

      getphymode = {
        type = "function",
        description = "Gets WiFi physical mode.",
        returns = "The current physical mode as one of wifi.PHYMODE_B, wifi.PHYMODE_G or wifi.PHYMODE_N.",
      },

      setmode = {
        type = "function",
        description = "Configures the WiFi mode to use. NodeMCU can run in one of four WiFi modes: , - Station mode, where the NodeMCU device joins an existing network , - Access point (AP) mode, where it creates its own network that others can join , - Station + AP mode, where it both creates its own network while at the same time being joined to another existing network , - WiFi off , When using the combined Station + AP mode, the same channel will be used for both networks as the radio can only listen on a single channel. , NOTE: WiFi Mode configuration will be retained until changed even if device is turned off. ",
        returns = "current mode after setup",
      },

      setphymode = {
        type = "function",
        description = "Sets WiFi physical mode. ,   , - wifi.PHYMODE_B ,     802.11b, more range, low Transfer rate, more current draw , - wifi.PHYMODE_G ,     802.11g, medium range, medium transfer rate, medium current draw , - wifi.PHYMODE_N ,     802.11n, least range, fast transfer rate, least current draw (STATION ONLY) , Information from the Espressif datasheet v4.3 , |           Parameters                        |Typical Power Usage| , |---------------------------------------------|-------------------| , |Tx 802.11b, CCK 11Mbps, P OUT=+17dBm         |     170 mA        | , |Tx 802.11g, OFDM 54Mbps, P OUT =+15dBm       |     140 mA        | , |Tx 802.11n, MCS7 65Mbps, P OUT =+13dBm       |     120 mA        | , |Rx 802.11b, 1024 bytes packet length, -80dBm |      50 mA        | , |Rx 802.11g, 1024 bytes packet length, -70dBm |      56 mA        | , |Rx 802.11n, 1024 bytes packet length, -65dBm |      56 mA        |",
        returns = "physical mode after setup",
      },

      sleeptype = {
        type = "function",
        description = "Configures the WiFi modem sleep type.",
        returns = "The actual sleep mode set, as one of wifi.NONE_SLEEP, wifi.LIGHT_SLEEP or wifi.MODEM_SLEEP.",
      },

      startsmart = {
        type = "function",
        description = "Starts to auto configuration, if success set up SSID and password automatically. , Intended for use with SmartConfig apps, such as Espressif's [Android & iOS app](https://github.com/espressifapp). , Only usable in wifi.STATION mode. , !!! note Note ,     SmartConfig is disabled by default and can be enabled by setting WIFI_SMART_ENABLE in [user_config.h](https://github.com/nodemcu/nodemcu-firmware/blob/dev/app/include/user_config.h#L96) before you build the firmware.",
        returns = "nil",
      },

      stopsmart = {
        type = "function",
        description = "Stops the smart configuring process.",
        returns = "nil",
      },

      sta = {
        type = "function",
        childs = {
          autoconnect = {
            type = "function",
            description = "Auto connects to AP in station mode.",
            returns = "nil",
          },

          config = {
            type = "function",
            description = "Sets the WiFi station configuration. , NOTE: Station configuration will be retained until changed even if device is turned off. ",
            returns = "nil",
          },

          connect = {
            type = "function",
            description = "Connects to the configured AP in station mode. You only ever need to call this if auto-connect was disabled in [wifi.sta.config()](#wifistaconfig).",
            returns = "nil",
          },

          disconnect = {
            type = "function",
            description = "Disconnects from AP in station mode.",
            returns = "nil",
          },

          eventMonReg = {
            type = "function",
            description = "Registers callbacks for WiFi station status events.",
            returns = "nil",
          },

          eventMonStart = {
            type = "function",
            description = "Starts WiFi station event monitor.",
            returns = "nil",
          },

          eventMonStop = {
            type = "function",
            description = "Stops WiFi station event monitor.",
            returns = "nil",
          },

          getap = {
            type = "function",
            description = "Scans AP list as a Lua table into callback function.",
            returns = "nil",
          },

          getbroadcast = {
            type = "function",
            description = "Gets the broadcast address in station mode.",
          },

          getconfig = {
            type = "function",
            description = "Gets the WiFi station configuration. ",
            returns = "ssid, password, bssid_set, bssid , Note: If bssid_set is equal to 0 then bssid is irrelevant ",
          },

          gethostname = {
            type = "function",
            description = "Gets current station hostname.",
            returns = "currently configured hostname",
          },

          getip = {
            type = "function",
            description = "Gets IP address, netmask, and gateway address in station mode.",
          },

          getmac = {
            type = "function",
            description = "Gets MAC address in station mode.",
            returns = "MAC address as string e.g. 18-33-44-FE-55-BB",
          },

          getrssi = {
            type = "function",
            description = "Get RSSI(Received Signal Strength Indicator) of the Access Point which ESP8266 station connected to.",
            returns = "- If station is connected to an access point, rssi is returned. , - If station is not connected to an access point, nil is returned.  ",
          },

          sethostname = {
            type = "function",
            description = "Sets station hostname.",
            returns = "nil",
          },

          setip = {
            type = "function",
            description = "Sets IP address, netmask, gateway address in station mode.",
            returns = "true if success, false otherwise",
          },

          setmac = {
            type = "function",
            description = "Sets MAC address in station mode.",
            returns = "true if success, false otherwise",
          },

          status = {
            type = "function",
            description = "Gets the current status in station mode.",
            returns = "number： 0~5 , - 0: STA_IDLE, , - 1: STA_CONNECTING, , - 2: STA_WRONGPWD, , - 3: STA_APNOTFOUND, , - 4: STA_FAIL, , - 5: STA_GOTIP. , ####wifi.ap Module",
          },
        },
      },
      ap = {
        type = "function",
        childs = {
          config = {
            type = "function",
            description = "",
            returns = "",
          },

          deauth = {
            type = "function",
            description = "",
            returns = "",
          },

          getbroadcast= {
            type = "function",
            description = "",
            returns = "",
          },

          getclient= {
            type = "function",
            description = "",
            returns = "",
          },

          getconfig= {
            type = "function",
            description = "",
            returns = "",
          },

          getdefaultconfig= {
            type = "function",
            description = "",
            returns = "",
          },

          getip= {
            type = "function",
            description = "",
            returns = "",
          },

          getmac= {
            type = "function",
            description = "",
            returns = "",
          },

          setip= {
            type = "function",
            description = "",
            returns = "",
          },

          setmac= {
            type = "function",
            description = "",
            returns = "",
          },

          dhcp = {
            config= {
              type = "function",
              description = "",
              returns = "",
            },

            start= {
              type = "function",
              description = "",
              returns = "",
            },

            stop= {
              type = "function",
              description = "",
              returns = "",
            },

          },
          eventmon = {
            register= {
              type = "function",
              description = "",
              returns = "",
            },

            unregister= {
              type = "function",
              description = "",
              returns = "",
            },

            reason= {
              type = "function",
              description = "",
              returns = "",
            },
          },
        },
      },
    },
  },
}

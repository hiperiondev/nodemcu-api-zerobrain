-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  ap = {
    type = "function",
    childs = {
      config = {
        type = "function",
        description = "Sets SSID and password in AP mode. Be sure to make the password at least 8 characters long! If you don't it will default to *no* password and not set the SSID! It will still work as an access point but use a default SSID like e.g. NODE-9997C3. , NOTE: SoftAP Configuration will be retained until changed even if device is turned off. ",
        returns = "nil",
      },

      deauth = {
        type = "function",
        description = "Deauths (forcibly removes) a client from the ESP access point by sending a corresponding IEEE802.11 management packet (first) and removing the client from it's data structures (afterwards).  , The IEEE802.11 reason code used is 2 for Previous authentication no longer valid(AUTH_EXPIRE).",
        returns = "Returns true unless called while the ESP is in the STATION opmode",
      },

      getbroadcast = {
        type = "function",
        description = "Gets broadcast address in AP mode.",
      },

      getclient = {
        type = "function",
        description = "Gets table of clients connected to device in AP mode.",
        returns = "table of connected clients",
      },

      getip = {
        type = "function",
        description = "Gets IP address, netmask and gateway in AP mode.",
      },

      getmac = {
        type = "function",
        description = "Gets MAC address in AP mode.",
      },

      setip = {
        type = "function",
        description = "Sets IP address, netmask and gateway address in AP mode.",
        returns = "true if successful, false otherwise",
      },

      setmac = {
        type = "function",
        description = "Sets MAC address in AP mode.",
        returns = "true if success, false otherwise",
      },

      dhcp = {
        type = "function",
        childs = {
          config = {
            type = "function",
            description = "Configure the dhcp service. Currently only supports setting the start address of the dhcp address pool.",
            returns = "pool_startip, pool_endip",
          },

          start = {
            type = "function",
            description = "Starts the DHCP service.",
            returns = "boolean indicating success",
          },

          stop = {
            type = "function",
            description = "Stops the DHCP service.",
            returns = "boolean indicating success , ####wifi.eventmon Module , Note: The functions wifi.sta.eventMon___() and wifi.eventmon.___() are completely seperate and can be used independently of one another.",
          },
        },
      },

      eventmon = {
        type = "function",
        childs = {
          register = {
            type = "function",
            description = "Register/unregister callbacks for WiFi event monitor.",
            returns = "Function:   , nil , Callback:   , T: Table returned by event.   , - wifi.eventmon.STA_CONNECTED Station is connected to access point.   , 	- SSID: SSID of access point.   , 	- BSSID: BSSID of access point.   , 	- channel: The channel the access point is on.   , - wifi.eventmon.STA_DISCONNECT: Station was disconnected from access point.   , 	- SSID: SSID of access point.   , 	- BSSID: BSSID of access point.   , 	- REASON: See [wifi.eventmon.reason](#wifieventmonreason) below.   , - wifi.eventmon.STA_AUTHMODE_CHANGE: Access point has changed authorization mode.     , 	- old_auth_mode: Old wifi authorization mode.   , 	- new_auth_mode: New wifi authorization mode.   , - wifi.eventmon.STA_GOT_IP: Station got an IP address.   , 	- IP: The IP address assigned to the station.   , 	- netmask: Subnet mask.   , 	- gateway: The IP address of the access point the station is connected to.   , - wifi.eventmon.STA_DHCP_TIMEOUT: Station DHCP request has timed out.   , 	- Blank table is returned.   , - wifi.eventmon.AP_STACONNECTED: A new client has connected to the access point.   , 	- MAC: MAC address of client that has connected.   , 	- AID: SDK provides no details concerning this return value.   , - wifi.eventmon.AP_STADISCONNECTED: A client has disconnected from the access point.   , 	- MAC: MAC address of client that has disconnected.   , 	- AID: SDK provides no details concerning this return value.   , - wifi.eventmon.AP_PROBEREQRECVED: A probe request was received.   , 	- MAC: MAC address of the client that is probing the access point.   , 	- RSSI: Received Signal Strength Indicator of client.  ",
          },

          unregister = {
            type = "function",
            description = "Unregister callbacks for WiFi event monitor.",
            returns = "nil",
          },

          reason = {
            type = "function",
            description = "Table containing disconnect reasons. , |  Disconnect reason  |  value  | , |:--------------------|:-------:| , |wifi.eventmon.reason.UNSPECIFIED   |  1  | , |wifi.eventmon.reason.AUTH_EXPIRE   |  2  |				 , |wifi.eventmon.reason.AUTH_LEAVE    |  3  | , |wifi.eventmon.reason.ASSOC_EXPIRE  |  4  | , |wifi.eventmon.reason.ASSOC_TOOMANY |  5  | , |wifi.eventmon.reason.NOT_AUTHED    |  6  | , |wifi.eventmon.reason.NOT_ASSOCED   |  7  | , |wifi.eventmon.reason.ASSOC_LEAVE   |  8  | , |wifi.eventmon.reason.ASSOC_NOT_AUTHED     |  9  | , |wifi.eventmon.reason.DISASSOC_PWRCAP_BAD  |  10  | , |wifi.eventmon.reason.DISASSOC_SUPCHAN_BAD |  11  | , |wifi.eventmon.reason.IE_INVALID    |  13  | , |wifi.eventmon.reason.MIC_FAILURE   |  14  | , |wifi.eventmon.reason.4WAY_HANDSHAKE_TIMEOUT   |  15  | , |wifi.eventmon.reason.GROUP_KEY_UPDATE_TIMEOUT |  16  | , |wifi.eventmon.reason.IE_IN_4WAY_DIFFERS       |  17  | , |wifi.eventmon.reason.GROUP_CIPHER_INVALID     |  18  | , |wifi.eventmon.reason.PAIRWISE_CIPHER_INVALID  |  19  | , |wifi.eventmon.reason.AKMP_INVALID          |  20  | , |wifi.eventmon.reason.UNSUPP_RSN_IE_VERSION |  21  | , |wifi.eventmon.reason.INVALID_RSN_IE_CAP    |  22  | , |wifi.eventmon.reason.802_1X_AUTH_FAILED    |  23  | , |wifi.eventmon.reason.CIPHER_SUITE_REJECTED |  24  | , |wifi.eventmon.reason.BEACON_TIMEOUT    |  200  | , |wifi.eventmon.reason.NO_AP_FOUND       |  201  | , |wifi.eventmon.reason.AUTH_FAIL         |  202  | , |wifi.eventmon.reason.ASSOC_FAIL        |  203  | , |wifi.eventmon.reason.HANDSHAKE_TIMEOUT |  204  |",
          },
        },
      },

    },

  },
}

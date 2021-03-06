-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  net = {
    type = "lib",
    childs = {

      createConnection = {
        type = "function",
        description = "Creates a client.",
        args = "(filename: string [, mode: string])",
        returns = "(file|nil [, string])",
        valuetype = "_NetSocket",
      },

      createServer = {
        type = "function",
        description = "Creates a server.",
        args = "(filename: string [, mode: string])",
        returns = "(file|nil [, string])",
        valuetype = "_NetServer",
      },

      dns = {
        type = "function",
        args = "(filename: string [, mode: string])",
        returns = "(file|nil [, string])",
        valuetype = "_NetDns",
      },

      cert = {
        type = "function",
        args = "(filename: string [, mode: string])",
        returns = "(file|nil [, string])",
        valuetype = "_NetCert",
      },
    },

    multicastJoin = {
      type = "function",
      description = "Join multicast group.",
      returns = "nil",
    },

    multicastLeave = {
      type = "function",
      description = "Leave multicast group.",
      returns = "nil",
    },
  },


  _NetServer = {
    type = class,
    childs = {
      close = {
        type = "method",
        description = "Closes the server.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      listen = {
        type = "method",
        description = "Listen on port from IP address.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      on = {
        type = "method",
        description = "UDP server only: Register callback functions for specific events.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      send = {
        type = "method",
        description = "UDP server only: Sends data to remote peer.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },
    },
  },

  _NetSocket = {
    type = class,
    childs = {
      close = {
        type = "method",
        description = "Closes socket.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      connect = {
        type = "method",
        description = "Connect to a remote server.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      dns = {
        type = "method",
        description = "Provides DNS resolution for a hostname.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      getpeer = {
        type = "method",
        description = "Retrieve port and ip of peer.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },


      hold = {
        type = "method",
        description = "Throttle data reception by placing a request to block the TCP receive function. This request is not effective immediately, Espressif recommends to call it while reserving 5*1460 bytes of memory.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      on = {
        type = "method",
        description = "Register callback functions for specific events.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      send = {
        type = "method",
        description = "Sends data to remote peer.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },


      unhold = {
        type = "method",
        description = "Unblock TCP receiving data by revocation of a preceding hold().",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },
    },
  },

  _NetDns ={
    type = class,
    childs = {
      getdnsserver = {
        type = "function",
        description = "Gets the IP address of the DNS server used to resolve hostnames.",
        returns = "IP address (string) of DNS server",
      },

      resolve = {
        type = "function",
        description = "Resolve a hostname to an IP address. Doesn't require a socket like [net.socket.dns()](#netsocketdns).",
        returns = "nil",
      },

      setdnsserver = {
        type = "function",
        description = "Sets the IP of the DNS server used to resolve hostnames. Default: resolver1.opendns.com (208.67.222.222). You can specify up to 2 DNS servers.",
        returns = "nil",
      },
    },
  },

  _NetCert = {
    type = "class",
    childs = {
      verify = {
        type = "function",
        description = "Controls the vertificate verification process when the Nodemcu makes a secure connection.",
        returns = "true if it worked.  , Can throw a number of errors if invalid data is supplied.",
      },
    },
  },
}

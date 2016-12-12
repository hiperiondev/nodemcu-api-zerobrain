return {
  rotary = {
    type = "lib",
    childs = {

      Sources = {
        type = "function",
        description = "- Amazon: This [search](http://www.amazon.com/s/ref=nb_sb_noss_1?url=search-alias%3Dindustrial&field-keywords=rotary+encoder+push+button&rh=n%3A16310091%2Ck%3Arotary+encoder+push+button) shows a variety. , - Ebay: Somewhat cheaper in this [search](http://www.ebay.com/sch/i.html?_from=R40&_trksid=p2050601.m570.l1313.TR0.TRC0.H0.Xrotary+encoder+push+button.TRS0&_nkw=rotary+encoder+push+button&_sacat=0) , - Adafruit: [rotary encoder](https://www.adafruit.com/products/377) , - Aliexpress: This [search](http://www.aliexpress.com/wholesale?catId=0&initiative_id=SB_20160217173657&SearchText=rotary+encoder+push+button) reveals all sorts of shapes and sizes. , There is also a switch mounted on a board with standard 0.1 pins.  , This is the KY-040, and can also be found at [lots of places](https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=ky-040%20rotary%20encoder).  , Note that the pins are named somewhat eccentrically, and I suspect that it really does need the VCC connected. , ####Constants , - rotary.PRESS = 1 The eventtype for the switch press. , - rotary.LONGPRESS = 2 The eventtype for a long press. , - rotary.RELEASE = 4 The eventtype for the switch release. , - rotary.TURN = 8 The eventtype for the switch rotation. , - rotary.CLICK = 16 The eventtype for a single click (after release) , - rotary.DBLCLICK = 32 The eventtype for a double click (after second release) , - rotary.ALL = 63 All event types.",
      },

      setup = {
        type = "function",
        description = "Initialize the nodemcu to talk to a rotary encoder switch.",
        returns = "Nothing. If the arguments are in error, or the operation cannot be completed, then an error is thrown. , For all API calls, if the channel number is out of range, then an error will be thrown.",
      },

      on = {
        type = "function",
        description = "Sets a callback on specific events.",
      },

      getpos = {
        type = "function",
        description = "Gets the current position and press status of the switch",
        returns = "- pos The current position of the switch. , - press A boolean indicating if the switch is currently pressed. , - queue The number of undelivered callbacks (normally 0).",
      },

      close = {
        type = "function",
        description = "Releases the resources associated with the rotary switch.",
      },

    },

  },
}

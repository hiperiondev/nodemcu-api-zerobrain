-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  node = {
    type = "lib",
    childs = {

      bootreason = {
        type = "function",
        description = "Returns the boot reason and extended reset info. , The first value returned is the raw code, not the new reset info code which was introduced in recent SDKs. Values are: ,   - 1, power-on ,   - 2, reset (software?) ,   - 3, hardware reset via reset pin ,   - 4, WDT reset (watchdog timeout) , The second value returned is the extended reset cause. Values are: ,   - 0, power-on ,   - 1, hardware watchdog reset ,   - 2, exception reset ,   - 3, software watchdog reset ,   - 4, software restart ,   - 5, wake from deep sleep ,   - 6, external reset , In general, the extended reset cause supercedes the raw code. The raw code is kept for backwards compatibility only. For new applications it is highly recommended to use the extended reset cause instead. , In case of extended reset cause 3 (exception reset), additional values are returned containing the crash information. These are, in order, EXCCAUSE, EPC1, EPC2, EPC3, EXCVADDR, and DEPC.",
        returns = "rawcode, reason [, exccause, epc1, epc2, epc3, excvaddr, depc ]",
      },

      chipid = {
        type = "function",
        description = "Returns the ESP chip ID.",
        returns = "chip ID (number)",
      },

      compile = {
        type = "function",
        description = "Compiles a Lua text file into Lua bytecode, and saves it as .lc file.",
        returns = "nil",
      },

      dsleep = {
        type = "function",
        description = "Enters deep sleep mode, wakes up when timed out. , The maximum sleep time is 4294967295us, ~71 minutes. This is an SDK limitation. , Firmware from before 05 Jan 2016 have a maximum sleeptime of ~35 minutes. , !!! note Note ,     This function can only be used in the condition that esp8266 PIN32(RST) and PIN8(XPD_DCDC aka GPIO16) are connected together. Using sleep(0) will set no wake up timer, connect a GPIO to pin RST, the chip will wake up by a falling-edge on pin RST.",
        returns = "nil",
      },

      flashid = {
        type = "function",
        description = "Returns the flash chip ID.",
        returns = "flash ID (number)",
      },

      heap = {
        type = "function",
        description = "Returns the current available heap size in bytes. Note that due to fragmentation, actual allocations of this size may not be possible.",
        returns = "system heap size left in bytes (number)",
      },

      info = {
        type = "function",
        description = "Returns NodeMCU version, chipid, flashid, flash size, flash mode, flash speed.",
        returns = " - majorVer (number) ,  - minorVer (number) ,  - devVer (number) ,  - chipid (number) ,  - flashid (number) ,  - flashsize (number) ,  - flashmode (number) ,  - flashspeed (number)",
      },

      input = {
        type = "function",
        description = "Submits a string to the Lua interpreter. Similar to pcall(loadstring(str)), but without the single-line limitation. , !!! note Note ,     This function only has an effect when invoked from a callback. Using it directly on the console **does not work**.",
        returns = "nil",
      },

      key = {
        type = "function",
        description = "Defines action to take on button press (on the old devkit 0.9), button connected to GPIO 16. , This function is only available if the firmware was compiled with DEVKIT_VERSION_0_9 defined.",
        returns = "nil",
      },

      led = {
        type = "function",
        description = "Sets the on/off time for the LED (on the old devkit 0.9), with the LED connected to GPIO16, multiplexed with [node.key()](#nodekey-deprecated). , This function is only available if the firmware was compiled with DEVKIT_VERSION_0_9 defined.",
        returns = "nil",
      },

      output = {
        type = "function",
        description = "Redirects the Lua interpreter output to a callback function. Optionally also prints it to the serial console. , !!! note Note ,     Do **not** attempt to print() or otherwise induce the Lua interpreter to produce output from within the callback function. Doing so results in infinite recursion, and leads to a watchdog-triggered restart.",
        returns = "nil",
      },

      readvdd33 = {
        type = "function",
        description = "Moved to [adc.readvdd33()](adc/#adcreadvdd33).",
      },

      restart = {
        type = "function",
        description = "Restarts the chip.",
        returns = "nil",
      },

      restore = {
        type = "function",
        description = "Restores system configuration to defaults using the SDK function system_restore(), which doesn't document precisely what it erases/restores.",
        returns = "nil",
      },

      setcpufreq = {
        type = "function",
        description = "Change the working CPU Frequency.",
        returns = "target CPU frequency (number)",
      },

      stripdebug = {
        type = "function",
        description = "Controls the amount of debug information kept during [node.compile()](#nodecompile), and allows removal of debug information from already compiled Lua code. , Only recommended for advanced users, the NodeMCU defaults are fine for almost all use cases.",
        returns = "If invoked without arguments, returns the current level settings. Otherwise, nil is returned.",
      },

      osprint = {
        type = "function",
        description = "Controls whether the debugging output from the Espressif SDK is printed. Note that this is only available if , the firmware is build with DEVELOPMENT_TOOLS defined.",
        returns = "Nothing",
      },

      egc = {
        type = "function",
        childs = {
          setmode = {
            type = "function",
            description = "Sets the Emergency Garbage Collector mode. [The EGC whitepaper](http://www.eluaproject.net/doc/v0.9/en_elua_egc.html) , provides more detailed information on the EGC.",
            returns = "nil",
          },
        },
      },

      task = {
        type = "function",
        childs = {
          post = {
            type = "function",
            returns = "nil",
          },
        },
      },

    },

  },
}

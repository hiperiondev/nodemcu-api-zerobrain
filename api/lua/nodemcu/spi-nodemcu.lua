-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  spi = {
    type = "lib",
    childs = {

      recv = {
        type = "function",
        description = "Receive data from SPI.",
        returns = "String containing the bytes read from SPI.",
      },

      send = {
        type = "function",
        description = "Send data via SPI in half-duplex mode. Send & receive data in full-duplex mode.",
        returns = "- wrote number of written bytes , - rdata received data when configured with spi.FULLDUPLEX<br />Same data type as corresponding data parameter.",
      },

      setup = {
        type = "function",
        description = "Set up the SPI configuration. , Refer to [Serial Peripheral Interface Bus](https://en.wikipedia.org/wiki/Serial_Peripheral_Interface_Bus#Clock_polarity_and_phase) for details regarding the clock polarity and phase definition.",
        returns = "Number: 1 , ####Low Level Hardware Functions , The low level functions provide a hardware-centric API for application , scenarios that need to excercise more complex SPI transactions. The , programming model is built up around the HW send and receive buffers and SPI , transactions are initiated with full control over the hardware features.",
      },

      get_miso = {
        type = "function",
        description = "Extract data items from MISO buffer after spi.transaction().",
        returns = "num data items",
      },

      set_mosi = {
        type = "function",
        description = "Insert data items into MOSI buffer for spi.transaction().",
        returns = "nil",
      },

      transaction = {
        type = "function",
        description = "Start an SPI transaction, consisting of up to 5 phases: , 1. Command , 2. Address , 3. MOSI , 4. Dummy , 5. MISO",
        returns = "nil",
      },

    },

  },
}

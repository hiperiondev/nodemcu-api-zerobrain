-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  u8g = {
    type = "lib",
    childs = {

      sh1106_128x64_i2c = {
        type = "function",
        description = "Initialize a display via I²C. , The init sequence would insert delays to match the display specs. These can destabilize the overall system if wifi service is blocked for too long. It is therefore advisable to disable such delays unless the specific use case can exclude wifi traffic while initializing the display driver.",
        returns = "u8g display object",
      },

      ssd1306_128x64_i2c = {
        type = "function",
        description = "Initialize a display via I²C. , The init sequence would insert delays to match the display specs. These can destabilize the overall system if wifi service is blocked for too long. It is therefore advisable to disable such delays unless the specific use case can exclude wifi traffic while initializing the display driver.",
        returns = "u8g display object",
      },

      ssd1306_64x48_i2c = {
        type = "function",
        description = "Initialize a display via I²C. , The init sequence would insert delays to match the display specs. These can destabilize the overall system if wifi service is blocked for too long. It is therefore advisable to disable such delays unless the specific use case can exclude wifi traffic while initializing the display driver.",
        returns = "u8g display object",
      },

      ssd1309_128x64_i2c = {
        type = "function",
        description = "Initialize a display via I²C. , The init sequence would insert delays to match the display specs. These can destabilize the overall system if wifi service is blocked for too long. It is therefore advisable to disable such delays unless the specific use case can exclude wifi traffic while initializing the display driver.",
        returns = "u8g display object",
      },

      ssd1327_96x96_gr_i2c = {
        type = "function",
        description = "Initialize a display via I²C. , The init sequence would insert delays to match the display specs. These can destabilize the overall system if wifi service is blocked for too long. It is therefore advisable to disable such delays unless the specific use case can exclude wifi traffic while initializing the display driver.",
        returns = "u8g display object",
      },

      uc1611_dogm240_i2c = {
        type = "function",
        description = "Initialize a display via I²C. , The init sequence would insert delays to match the display specs. These can destabilize the overall system if wifi service is blocked for too long. It is therefore advisable to disable such delays unless the specific use case can exclude wifi traffic while initializing the display driver.",
        returns = "u8g display object",
      },

      uc1611_dogxl240_i2c = {
        type = "function",
        description = "Initialize a display via I²C. , The init sequence would insert delays to match the display specs. These can destabilize the overall system if wifi service is blocked for too long. It is therefore advisable to disable such delays unless the specific use case can exclude wifi traffic while initializing the display driver.",
        returns = "u8g display object",
      },

      ld7032_60x32_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      pcd8544_84x48_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      pcf8812_96x65_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      sh1106_128x64_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      ssd1306_128x64_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      ssd1306_64x48_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      ssd1309_128x64_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      ssd1322_nhd31oled_bw_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      ssd1322_nhd31oled_gr_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      ssd1325_nhd27oled_bw_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      ssd1325_nhd27oled_gr_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      ssd1327_96x96_gr_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      ssd1351_128x128_332_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      ssd1351_128x128gh_332_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      ssd1351_128x128_hicolor_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      ssd1351_128x128gh_hicolor_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      ssd1353_160x128_332_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      ssd1353_160x128_hicolor_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      st7565_64128n_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      st7565_dogm128_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      st7565_dogm128_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      st7565_lm6059_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      st7565_lm6063_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      st7565_nhd_c12832_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      st7565_nhd_c12864_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      uc1601_c128032_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      uc1608_240x128_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      uc1608_240x64_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      uc1610_dogxl160_bw_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      uc1610_dogxl160_gr_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      uc1611_dogm240_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      uc1611_dogxl240_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      uc1701_dogs102_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      uc1701_mini12864_hw_spi = {
        type = "function",
        returns = "u8g display object",
      },

      disp = {
        type = "function",
        args = "(filename: string [, mode: string])",
        returns = "(file|nil [, string])",
        valuetype = "_U8gDisp",
      }
    },
  },


  _U8gDisp = {
    type = "class",
    childs = {
      begin = {
        type = "method",
        description = "See [u8glib begin()](https://github.com/olikraus/u8glib/wiki/userreference#begin).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawBitmap = {
        type = "method",
        description = "Draw a bitmap at the specified x/y position (upper left corner of the bitmap). , Parts of the bitmap may be outside the display boundaries. The bitmap is specified by the array bitmap. A cleared bit means: Do not draw a pixel. A set bit inside the array means: Write pixel with the current color index. For a monochrome display, the color index 0 will usually clear a pixel and the color index 1 will set a pixel.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawBox = {
        type = "method",
        description = "See [u8glib drawBox()](https://github.com/olikraus/u8glib/wiki/userreference#drawbox).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawCircle = {
        type = "method",
        description = "See [u8glib drawCircle()](https://github.com/olikraus/u8glib/wiki/userreference#drawcircle).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawDisc = {
        type = "method",
        description = "See [u8glib drawDisc()](https://github.com/olikraus/u8glib/wiki/userreference#drawdisc).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawEllipse = {
        type = "method",
        description = "See [u8glib drawEllipse()](https://github.com/olikraus/u8glib/wiki/userreference#drawellipse).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawFilledEllipse = {
        type = "method",
        description = "See [u8glib drawFilledEllipse](https://github.com/olikraus/u8glib/wiki/userreference#drawfilledellipse).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawFrame = {
        type = "method",
        description = "See [u8glib drawFrame()](https://github.com/olikraus/u8glib/wiki/userreference#drawframe).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])", },

      drawHLine = {
        type = "method",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",  description = "See [u8glib drawHLine()](https://github.com/olikraus/u8glib/wiki/userreference#drawhline).",
      },

      drawLine = {
        type = "method",
        description = "See [u8glib drawLine()](https://github.com/olikraus/u8glib/wiki/userreference#drawline).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawPixel = {
        type = "method",
        description = "See [u8glib drawPixel()](https://github.com/olikraus/u8glib/wiki/userreference#drawpixel).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawRBox = {
        type = "method",
        description = "See [u8glib drawRBox()](https://github.com/olikraus/u8glib/wiki/userreference#drawrbox).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawRFrame = {
        type = "method",
        description = "See [u8glib drawRFrame()](https://github.com/olikraus/u8glib/wiki/userreference#drawrframe).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawStr = {
        type = "method",
        description = "See [u8glib drawStr()](https://github.com/olikraus/u8glib/wiki/userreference#drawstr).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawStr90 = {
        type = "method",
        description = "See [u8glib drawStr90](https://github.com/olikraus/u8glib/wiki/userreference#drawstr90).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawStr180 = {
        type = "method",
        description = "See [u8glib drawStr180()](https://github.com/olikraus/u8glib/wiki/userreference#drawstr180).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawStr270 = {
        type = "method",
        description = "See [u8glib drawStr270()](https://github.com/olikraus/u8glib/wiki/userreference#drawstr270).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawTriangle = {
        type = "method",
        description = "See [u8glib drawTriangle()](https://github.com/olikraus/u8glib/wiki/userreference#drawtriangle).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawVLine = {
        type = "method",
        description = "See [u8glib drawVLine()](https://github.com/olikraus/u8glib/wiki/userreference#drawvline).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawXBM = {
        type = "method",
        description = "Draw a XBM Bitmap. Position (x,y) is the upper left corner of the bitmap. , XBM contains monochrome, 1-bit bitmaps. This procedure only draws pixel values 1. The current color index is used for drawing (see setColorIndex). Pixel with value 0 are not drawn (transparent). , Bitmaps and XBMs are supplied as strings to drawBitmap() and drawXBM(). This off-loads all data handling from the u8g module to generic methods for binary files. In contrast to the source code based inclusion of XBMs into u8glib, it's required to provide precompiled binary files. This can be performed online with [Online-Utility's Image Converter](http://www.online-utility.org/image_converter.jsp): Convert from XBM to MONO format and upload the binary result with [nodemcu-uploader.py](https://github.com/kmpm/nodemcu-uploader) or [ESPlorer](http://esp8266.ru/esplorer/).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      firstPage = {
        type = "method",
        description = "See [u8glib firstPage()](https://github.com/olikraus/u8glib/wiki/userreference#firstpage).",
      },

      getColorIndex = {
        type = "method",
        description = "See [u8glib getColorIndex()](https://github.com/olikraus/u8glib/wiki/userreference#getcolorindex).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      getFontAscent = {
        type = "method",
        description = "See [u8glib getFontAscent()](https://github.com/olikraus/u8glib/wiki/userreference#getfontascent).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      getFontDescent = {
        type = "method",
        description = "See [u8glib getFontDescent()](https://github.com/olikraus/u8glib/wiki/userreference#getfontdescent).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      getFontLineSpacing = {
        type = "method",
        description = "See [u8glib getFontLineSpacing()](https://github.com/olikraus/u8glib/wiki/userreference#getfontlinespacing).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      getHeight = {
        type = "method",
        description = "See [u8glib getHeight()](https://github.com/olikraus/u8glib/wiki/userreference#getheight).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      getMode = {
        type = "method",
        description = "See [u8glib getMode()](https://github.com/olikraus/u8glib/wiki/userreference#getmode).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      getWidth = {
        type = "method",
        description = "See [u8glib getWidth()](https://github.com/olikraus/u8glib/wiki/userreference#getwidth).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      getStrWidth = {
        type = "method",
        description = "See [u8glib getStrWidth](https://github.com/olikraus/u8glib/wiki/userreference#getstrwidth).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      nextPage = {
        type = "method",
        description = "See [u8glib nextPage()](https://github.com/olikraus/u8glib/wiki/userreference#nextpage).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setColorIndex = {
        type = "method",
        description = "See [u8glib setColorIndex()](https://github.com/olikraus/u8glib/wiki/userreference#setcolortndex).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setDefaultBackgroundColor = {
        type = "method",
        description = "See [u8glib setDefaultBackgroundColor()](https://github.com/olikraus/u8glib/wiki/userreference#setdefaultbackgroundcolor).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setDefaultForegroundColor = {
        type = "method",
        description = "See [u8glib setDefaultForegroundColor()](https://github.com/olikraus/u8glib/wiki/userreference#setdefaultforegroundcolor).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setFont = {
        type = "method",
        description = "u8glib comes with a wide range of fonts for small displays. , Since they need to be compiled into the firmware image, you'd need to include them in app/include/u8g_config.h and recompile. Simply add the desired fonts to the font table: , c , #define U8G_FONT_TABLE  ,     U8G_FONT_TABLE_ENTRY(font_6x10)  ,     U8G_FONT_TABLE_ENTRY(font_chikita) ,  , They'll be available as u8g.<font_name> in Lua.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
        returns = "nil",
      },

      setFontLineSpacingFactor = {
        type = "method",
        description = "See [u8glib setFontLineSpacingFactor()](https://github.com/olikraus/u8glib/wiki/userreference#setfontlinespacingfactor).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setFontPosBaseline = {
        type = "method",
        description = "See [u8glib setFontPosBaseline()](https://github.com/olikraus/u8glib/wiki/userreference#setfontposbaseline).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setFontPosBottom = {
        type = "method",
        description = "See [u8glib setFontPosBottom()](https://github.com/olikraus/u8glib/wiki/userreference#setfontposbottom).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setFontPosCenter = {
        type = "method",
        description = "See [u8glib setFontPosCenter()](https://github.com/olikraus/u8glib/wiki/userreference#setfontposcenter).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setFontPosTop = {
        type = "method",
        description = "See [u8glib setFontPosTop()](https://github.com/olikraus/u8glib/wiki/userreference#setfontpostop).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setFontRefHeightAll = {
        type = "method",
        description = "See [u8glib setFontRefHeightAll()](https://github.com/olikraus/u8glib/wiki/userreference#setfontrefheightall).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setFontRefHeightExtendedText = {
        type = "method",
        description = "See [u8glib setFontRefHeightExtendedText()](https://github.com/olikraus/u8glib/wiki/userreference#setfontrefheightextendedtext).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setFontRefHeightText = {
        type = "method",
        description = "See [u8glib setFontRefHeightText()](https://github.com/olikraus/u8glib/wiki/userreference#setfontrefheighttext).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setRot90 = {
        type = "method",
        description = "See [u8glib setRot90()](https://github.com/olikraus/u8glib/wiki/userreference#setrot90).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setRot180 = {
        type = "method",
        description = "See [u8glib setRot180()](https://github.com/olikraus/u8glib/wiki/userreference#setrot180).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setRot270 = {
        type = "method",
        description = "See [u8glib setRot270()](https://github.com/olikraus/u8glib/wiki/userreference#setrot270).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setScale2x2 = {
        type = "method",
        description = "See [u8glib setScale2x2()](https://github.com/olikraus/u8glib/wiki/userreference#setscale2x2).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      sleepOn = {
        type = "method",
        description = "See [u8glib sleepOn()](https://github.com/olikraus/u8glib/wiki/userreference#sleepon).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      sleepOff = {
        type = "method",
        description = "See [u8glib sleepOff()](https://github.com/olikraus/u8glib/wiki/userreference#sleepoff).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },
      undoRotation = {
        type = "method",
        description = "See [u8glib undoRotation()](https://github.com/olikraus/u8glib/wiki/userreference#undorotation).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      undoScale = {
        type = "method",
        description = "See [u8glib undoScale()](https://github.com/olikraus/u8glib/wiki/userreference#undoscale).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },
    },
  },
}

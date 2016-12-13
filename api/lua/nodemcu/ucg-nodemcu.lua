-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  ucg = {
    type = "lib",
    childs = {

      ili9163_18x128x128_hw_spi = {
        type = "function",
        description = "Initialize a display via Hardware SPI.",
        returns = "ucg display object",
      },

      ili9341_18x240x320_hw_spi = {
        type = "function",
        description = "Initialize a display via Hardware SPI.",
        returns = "ucg display object",
      },

      pcf8833_16x132x132_hw_spi = {
        type = "function",
        description = "Initialize a display via Hardware SPI.",
        returns = "ucg display object",
      },

      seps225_16x128x128_uvis_hw_spi = {
        type = "function",
        description = "Initialize a display via Hardware SPI.",
        returns = "ucg display object",
      },

      ssd1351_18x128x128_hw_spi = {
        type = "function",
        description = "Initialize a display via Hardware SPI.",
        returns = "ucg display object",
      },

      ssd1351_18x128x128_ft_hw_spi = {
        type = "function",
        description = "Initialize a display via Hardware SPI.",
        returns = "ucg display object",
      },

      ssd1331_18x96x64_uvis_hw_spi = {
        type = "function",
        description = "Initialize a display via Hardware SPI.",
        returns = "ucg display object",
      },

      st7735_18x128x160_hw_spi = {
        type = "function",
        description = "Initialize a display via Hardware SPI.",
        returns = "ucg display object",
      },

      disp = {
        type = "function",
        args = "(filename: string [, mode: string])",
        returns = "(file|nil [, string])",
        valuetype = "_UcgDisp",
      }
    },
  },

  _UcgDisp = {
    type = "class",
    childs = {
      begin = {
        type = "method",
        description = "See [ucglib begin()](https://github.com/olikraus/ucglib/wiki/reference#begin).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      clearScreen = {
        type = "method",
        description = "See [ucglib clearScreen()](https://github.com/olikraus/ucglib/wiki/reference#clearscreen).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      draw90Line = {
        type = "method",
        description = "See [ucglib draw90Line()](https://github.com/olikraus/ucglib/wiki/reference#draw90line).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawBox = {
        type = "method",
        description = "See [ucglib drawBox()](https://github.com/olikraus/ucglib/wiki/reference#drawbox).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawCircle = {
        type = "method",
        description = "See [ucglib drawCircle()](https://github.com/olikraus/ucglib/wiki/reference#drawcircle).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawDisc = {
        type = "method",
        description = "See [ucglib drawDisc()](https://github.com/olikraus/ucglib/wiki/reference#drawdisc).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawFrame = {
        type = "method",
        description = "See [ucglib drawFrame()](https://github.com/olikraus/ucglib/wiki/reference#drawframe).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawGlyph = {
        type = "method",
        description = "See [ucglib drawGlyph()](https://github.com/olikraus/ucglib/wiki/reference#drawglyph).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawGradientBox = {
        type = "method",
        description = "See [ucglib drawGradientBox()](https://github.com/olikraus/ucglib/wiki/reference#drawgradientbox).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawGradientLine = {
        type = "method",
        description = "See [ucglib drawGradientLine()](https://github.com/olikraus/ucglib/wiki/reference#drawgradientline).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawHLine = {
        type = "method",
        description = "See [ucglib drawHLine()](https://github.com/olikraus/ucglib/wiki/reference#drawhline).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawLine = {
        type = "method",
        description = "See [ucglib drawLine()](https://github.com/olikraus/ucglib/wiki/reference#drawline).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawPixel = {
        type = "method",
        description = "See [ucglib drawPixel()](https://github.com/olikraus/ucglib/wiki/reference#drawpixel).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawRBox = {
        type = "method",
        description = "See [ucglib drawRBox()](https://github.com/olikraus/ucglib/wiki/reference#drawrbox).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawRFrame = {
        type = "method",
        description = "See [ucglib drawRFrame()](https://github.com/olikraus/ucglib/wiki/reference#drawrframe).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawString = {
        type = "method",
        description = "See [ucglib drawString()](https://github.com/olikraus/ucglib/wiki/reference#drawstring).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawTetragon = {
        type = "method",
        description = "See [ucglib drawTetragon()](https://github.com/olikraus/ucglib/wiki/reference#drawtetragon).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawTriangle = {
        type = "method",
        description = "See [ucglib drawTriangle()](https://github.com/olikraus/ucglib/wiki/reference#drawrtiangle).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      drawVLine = {
        type = "method",
        description = "See [ucglib drawVline()](https://github.com/olikraus/ucglib/wiki/reference#drawvline).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      getFontAscent = {
        type = "method",
        description = "See [ucglib getFontAscent()](https://github.com/olikraus/ucglib/wiki/reference#getfontascent).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      getFontDescent = {
        type = "method",
        description = "See [ucglib getFontDescent()](https://github.com/olikraus/ucglib/wiki/reference#getfontdescent).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      getHeight = {
        type = "method",
        description = "See [ucglib getHeight()](https://github.com/olikraus/ucglib/wiki/reference#getheight).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      getStrWidth = {
        type = "method",
        description = "See [ucglib getStrWidth()](https://github.com/olikraus/ucglib/wiki/reference#getstrwidth).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      getWidth = {
        type = "method",
        description = "See [ucglib getWidth()](https://github.com/olikraus/ucglib/wiki/reference#getwidth).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      print = {
        type = "method",
        description = "See [ucglib print()](https://github.com/olikraus/ucglib/wiki/reference#print).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setClipRange = {
        type = "method",
        description = "See [ucglib setClipRange()](https://github.com/olikraus/ucglib/wiki/reference#setcliprange).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setColor = {
        type = "method",
        description = "See [ucglib setColor()](https://github.com/olikraus/ucglib/wiki/reference#setcolor).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setFont = {
        type = "method",
        description = "ucglib comes with a wide range of fonts for small displays. Since they need to be compiled into the firmware image, you'd need to include them in [app/include/ucg_config.h](https://github.com/nodemcu/nodemcu-firmware/blob/master/app/include/ucg_config.h) and recompile. Simply add the desired fonts to the font table: , c , #define UCG_FONT_TABLE                               ,     UCG_FONT_TABLE_ENTRY(font_7x13B_tr)             ,     UCG_FONT_TABLE_ENTRY(font_helvB12_hr)            ,     UCG_FONT_TABLE_ENTRY(font_helvB18_hr)            ,     UCG_FONT_TABLE_ENTRY(font_ncenR12_tr)            ,     UCG_FONT_TABLE_ENTRY(font_ncenR14_hr) ,  , They'll be available as ucg.<font_name> in Lua.",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setFontMode = {
        type = "method",
        description = "See [ucglib setFontMode()](https://github.com/olikraus/ucglib/wiki/reference#setfontmode).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setFontPosBaseline = {
        type = "method",
        description = "See [ucglib setFontPosBaseline()](https://github.com/olikraus/ucglib/wiki/reference#setfontposbaseline).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setFontPosBottom = {
        type = "method",
        description = "See [ucglib setFontPosBottom()](https://github.com/olikraus/ucglib/wiki/reference#setfontposbottom).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setFontPosCenter = {
        type = "method",
        description = "See [ucglib setFontPosCenter()](https://github.com/olikraus/ucglib/wiki/reference#setfontposcenter).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setFontPosTop = {
        type = "method",
        description = "See [ucglib setFontPosTop()](https://github.com/olikraus/ucglib/wiki/reference#setfontpostop).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setMaxClipRange = {
        type = "method",
        description = "See [ucglib setMaxClipRange()](https://github.com/olikraus/ucglib/wiki/reference#setmaxcliprange).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setPrintDir = {
        type = "method",
        description = "See [ucglib setPrintDir()](https://github.com/olikraus/ucglib/wiki/reference#setprintdir).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setPrintPos = {
        type = "method",
        description = "See [ucglib setPrintPos()](https://github.com/olikraus/ucglib/wiki/reference#setprintpos).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setRotate90 = {
        type = "method",
        description = "See [ucglib setRotate90()](https://github.com/olikraus/ucglib/wiki/reference#setrotate90).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setRotate180 = {
        type = "method",
        description = "See [ucglib setRotate180()](https://github.com/olikraus/ucglib/wiki/reference#setrotate180).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setRotate270 = {
        type = "method",
        description = "See [ucglib setRotate270()](https://github.com/olikraus/ucglib/wiki/reference#setrotate270).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      setScale2x2 = {
        type = "method",
        description = "See [ucglib setScale2x2()](https://github.com/olikraus/ucglib/wiki/reference#setscale2x2).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      undoClipRange = {
        type = "method",
        description = "See [ucglib undoClipRange()](https://github.com/olikraus/ucglib/wiki/reference#undocliprange).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      undoRotate = {
        type = "method",
        description = "See [ucglib undoRotate()](https://github.com/olikraus/ucglib/wiki/reference#undorotate).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },

      undoScale = {
        type = "method",
        description = "See [ucglib undoScale()](https://github.com/olikraus/ucglib/wiki/reference#undoscale).",
        args = "(file: file)",
        returns = "(boolean|nil [, string, number])",
      },
    },
  },
}

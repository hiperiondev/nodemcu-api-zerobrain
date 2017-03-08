local id = ID("nodemcutoolbar.makemenu")
local tool
local nodemcuConfigFile = ide.oshome and
  MergeFullPath(ide.oshome, "."..ide.appname.."/nodemcu.lua")

return {
  name = "Add NodeMCU toolbar button",
  description = "Adds a menu item and toolbar",
  author = "Emiliano Gonzalez",
  version = 0.1,
  dependencies = "1.0",

  onRegister = function(self)
    local menu = ide:FindTopMenu("&Project")

    local zoomMenu = ide:MakeMenu {
      {991, TR("Item 1")..KSC(991), TR("Function Item 1"), wx.wxITEM_CHECK},
      {992, TR("Item 2")..KSC(992), TR("Function Item 2"), wx.wxITEM_CHECK},
      {0, TR("")..KSC(0), TR(""), wx.wxITEM_SEPARATOR},
      {993, TR("Upload Actual File")..KSC(993), TR("Upload Actual File")},
      {994, TR("Upload Project")..KSC(994), TR("Upload Project")},
      {0, TR("")..KSC(0), TR(""), wx.wxITEM_SEPARATOR},
      {995, TR("Preferences")..KSC(995), TR("Preferences")},
    }

    menu:Append(id, "NodeMCU", zoomMenu)

    ide:GetMainFrame():Connect(993, wx.wxEVT_COMMAND_MENU_SELECTED, function()
      ide:ExecuteCommand('echo "executed Item 3"', ide:GetProject(), function(s) ide:GetOutput():Write(s) end)
    end)

    local function generateConfigMessage(type)
      return ([==[--[[--
  Use this file to specify **%s** preferences.
--]]--

serialPort = /dev/ttyUSB1
baudRate = 9600
esptoolRoute = /usr/bin/esptool.py
]==])
        :format(type, MergeFullPath(ide.editorFilename, "../cfg/user-sample.lua"),
          "http://studio.zerobrane.com/documentation.html")
    end

    ide:GetMainFrame():Connect(995, wx.wxEVT_COMMAND_MENU_SELECTED,
      function ()
        local editor = LoadFile(nodemcuConfigFile)
        if editor and editor:GetLength() == 0 then
          editor:AddTextDyn(generateConfigMessage("NodeMCU")) end
      end)

    local tb = ide:GetToolBar()
    tool = tb:AddTool(id, "NodeMCU"..KSC(id), wx.wxBitmap({""}))
    tb:Realize()
  end,

  onUnRegister = function(self)
    local tb = ide:GetToolBar()
    tb:DeleteTool(tool)
    tb:Realize()
    ide:RemoveMenuItem(id)
  end,

}

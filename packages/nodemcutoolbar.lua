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
      {901, TR("Restart MCU after upload")..KSC(901), TR("Restart MCU after upload"), wx.wxITEM_CHECK},
      {902, TR("Cross compile before upload")..KSC(902), TR("Cross compile before upload"), wx.wxITEM_CHECK},
      {0, TR("")..KSC(0), TR(""), wx.wxITEM_SEPARATOR},
      {903, TR("Upload Actual File")..KSC(903), TR("Upload Actual File")},
      {904, TR("Upload Project")..KSC(904), TR("Upload Project")},
      {0, TR("")..KSC(0), TR(""), wx.wxITEM_SEPARATOR},     
      {905, TR("List files on device")..KSC(905), TR("List files on device")},
      {906, TR("Reset device")..KSC(906), TR("Reset device")},
      {907, TR("Query chip id")..KSC(907), TR("Query chip id")},
      {908, TR("Query flash id")..KSC(908), TR("Query flash id")},
      {909, TR("Query Heap")..KSC(909), TR("Query Heap")},    
      {0, TR("")..KSC(0), TR(""), wx.wxITEM_SEPARATOR},
      {910, TR("Delete all lua/lc files on device")..KSC(906), TR("Delete all lua/lc files on device")},     
      {0, TR("")..KSC(0), TR(""), wx.wxITEM_SEPARATOR},
      {911, TR("Preferences")..KSC(910), TR("Preferences")},
    }

    menu:Append(id, "NodeMCU", zoomMenu)

    ide:GetMainFrame():Connect(903, wx.wxEVT_COMMAND_MENU_SELECTED, function()
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

    ide:GetMainFrame():Connect(911, wx.wxEVT_COMMAND_MENU_SELECTED,
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

local id = ID("nodemcutoolbar.makemenu")
local tool

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
      {993, TR("Item 3")..KSC(993), TR("Function Item 4")},
    }

    menu:Append(id, "NodeMCU", zoomMenu)

    ide:GetMainFrame():Connect(993, wx.wxEVT_COMMAND_MENU_SELECTED, function()
      ide:ExecuteCommand('echo "executed Item 3"', ide:GetProject(), function(s) ide:GetOutput():Write(s) end)
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

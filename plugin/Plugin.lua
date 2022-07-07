local Toolbar = plugin:CreateToolbar("v.2.0.0")
local Button = Toolbar:CreateButton("Stringbyte", "Installs the latest version of Stringbyte into ServerScriptService", "http://www.roblox.com/asset/?id=13886776")
local PluginFolder = script.Parent

local studio = script.Parent.App.Studio:Clone()
studio.Parent = game.ServerScriptService

studio.Destroying:Connect(function()
	studio:Clone()
	studio.Parent = game.ServerScriptService
end)

local CoreGUI = game:GetService("CoreGui")

local App = require(script.Parent.App)

local InstallUI = PluginFolder.App.UI.Setup

function Install()
	App.Download(game:GetService("ServerScriptService"))
end

function Uninstall()
	App.Uninstall()
end

Button.Click:Connect(function()
	if InstallUI.Parent == CoreGUI then
		InstallUI.Parent = nil
	else
		InstallUI.Parent = CoreGUI
		
		InstallUI.Frame.Install.MouseButton1Click:Connect(function()
			Install()
		end)
		
		InstallUI.Frame.Uninstall.MouseButton1Click:Connect(function()
			Uninstall()
		end)
	end
end)

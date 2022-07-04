local Toolbar = plugin:CreateToolbar("Stringbyte")
local Button = Toolbar:CreateButton("Install", "Installs the latest version of Stringbyte into ServerScriptService", "http://www.roblox.com/asset/?id=9440955606")

function Plugin()
	local Stringbyte = script.Parent.Package.Stringbyte:Clone()
	Stringbyte.Parent = game.ServerScriptService
	
	print("Done installing package 'Stringbyte-Rework.rbxm'")
end

Button.Click:Connect(function()
	Plugin() 
end)

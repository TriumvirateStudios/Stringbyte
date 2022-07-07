local App = {}

function App.Download(Parent)
	local Stringbyte = script.Parent.Module:Clone()
	Stringbyte.Parent = Parent
	Stringbyte.Name = "App"
	
	wait(1)
end

function App.Uninstall()
	local Stringbyte = game:GetService("ServerScriptService"):WaitForChild("App")
	
	if Stringbyte then
		Stringbyte:Destroy()
	else
		print("No Stringbyte Found")
	end
end

return App

local Controller = {} 
local Packages = script.Parent.Parent.Packages

local Strings = require(script.Parent.Parent.Components.StringTable)
local Table = {}

function Controller.Register(String_Type, Name, Parent, String_Value)
	if String_Type == "StringValue" then
		local String = Strings.StringValue
		String.Parent = Parent
		String.Name = Name

		task.wait(1)

		String.Value = String_Value
	end

	if String_Type == "Bool" then
		local String = Strings.BoolValue
		String.Parent = Parent
		String.Name = Name

		task.wait(1)

		if String_Value == "True" then
			String.Value = true
		end

		if String_Value == "False" then
			String.Value = false
		end

		if String_Value == "true" then
			String.Value = true
		end

		if String_Value == "false" then
			String.Value = false
		end
	end

	if String_Type == "Number" then
		local String = Strings.NumberValue
		String.Parent = Parent
		String.Name = Name

		task.wait(1)

		String.Value = String_Value
	end

	if String_Type == "Int" then
		local String = Strings.IntValue
		String.Parent = Parent
		String.Name = Name

		task.wait(1)

		String.Value = String_Value
	end	
end

function Controller.Destroy(String_Name)
	for i, v in pairs(game:GetDescendants()) do 
		if v.Name == String_Name then
			local Clone = v:Clone()
			Clone.Parent = script.Parent.Parent.Components.Strings
			Clone.Name = String_Name
			
			v:Destroy()

			script.Parent.Strings.StringAmount.Value = script.Parent.Strings.StringAmount.Value - 1
		end
	end
end

function Controller.Recover(String_Name, Parent)
	for i, v in pairs(script.Parent.Parent.Components.Strings:GetChildren()) do
		if v.Name == String_Name then
			v.Parent = Parent
			script.Parent.Strings.StringAmount.Value = script.Parent.Strings.StringAmount.Value + 1
		end
	end
end

function Controller.Find(String_Name)
	for i, v in pairs(game:GetDescendants()) do
		if v.Name == String_Name then
			print("String "..v.Name.." Has been found. String parent: "..v.Parent)
		else
			print("Could Not Find String try checking the name")
		end
	end
end

function Controller.Edit(EditType, String, New)
	if EditType == "Value" then
		for i, v in pairs(game:GetDescendants()) do
			if v.Name == String then
				v.Value = New
			end
		end
	end

	if EditType == "Name" then
		for i, v in pairs(game:GetDescendants()) do
			if v.Name == String then
				v.Name = New
			end
		end
	end

	if EditType == "Parent" then
		for i, v in pairs(game:GetDescendants()) do
			if v.Name == String then
				v.Parent = New
			end
		end
	end
end

return Controller

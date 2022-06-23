local Controller = {} 
local Strings = require(script.Parent.StringTable)
local Maid = require(script.Parent.Parent.Packages.Maid)

local Maid_ = Maid.new()
local Table = {}

function Controller.Register(String_Type, Name, Parent, String_Value)
	if String_Type == "StringValue" then
		local String = Strings.StringValue
		String.Parent = Parent
		String.Name = Name
		
		task.wait(1)
		
		String.Value = String_Value
	end
	
	if String_Type == "BoolValue" then
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
	
	if String_Type == "NumberValue" then
		local String = Strings.NumberValue
		String.Parent = Parent
		String.Name = Name

		task.wait(1)

		String.Value = String_Value
	end
	
	if String_Type == "IntValue" then
		local String = Strings.IntValue
		String.Parent = Parent
		String.Name = Name

		task.wait(1)

		String.Value = String_Value
	end
	
	if String_Type == "Custom" then
		local String = Strings.Custom
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
			Clone.Parent = script.Parent.Strings
			Clone.Name = String_Name

			Maid_.DestroyString = v
			task.wait(0.3)
			Maid_.DestroyString = nil
			
			script.Parent.Strings.StringAmount.Value = script.Parent.Strings.StringAmount.Value - 1
		end
	end
end

function Controller.Recover(String_Name, Parent)
	for i, v in pairs(script.Parent.Strings:GetChildren()) do
		if v.Name == String_Name then
			v.Parent = Parent
			script.Parent.Strings.StringAmount.Value = script.Parent.Strings.StringAmount.Value + 1
		end
	end
end

function Controller.Find(String_Name, Parents, Amount)
	for i, v in pairs(game:GetDescendants()) do
		if v.Name == String_Name then
			print("String "..v.Name.." Has been found")
		else
			print("Could Not Find String try checking the name")
		end
	end
end

function Controller.Tag(Instance_, Tag_Name)
	local Tag = Strings.Custom
	Tag.Parent = Instance_
	Tag.Name = Tag_Name
end

return Controller

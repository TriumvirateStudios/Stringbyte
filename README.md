
# Stringbyte

### Module Description
What is Stringbyte? Well, it's a module to help you get many features that normal Roblox strings don't have.

## Installation
#### Complicated 
First of all select the ```Latest``` Stringbyte version. After you click on that, download the
```Stringbyte.rbxm```. Once it's done drag and drop the file to Roblox Studio

#### Simple
Open Roblox Studio and select your project. After that go to the Tabs and click on the View tab.
After that click on the Command Bar. Then paste this Command into the Command Bar 

```Lua
for i, v in pairs(game:GetObjects("rbxassetid://9998442298")) do 
     v.Parent = game.ServerScriptService 
end
```
Then open the workspace and you're done with the Installation!

## Basic Usage
Now insert a Script into ServerScriptService then paste this line of code into the Script  
```local Stringbyte = require(game:GetService("ServerScriptService").Stringbyte.MainModule)```
To create a String type this code in:  
```Stringbyte.Register("StringValue", "StringName", Parent, "Value")```

Now run if you run the code and open that Parent you will see your String with that Value

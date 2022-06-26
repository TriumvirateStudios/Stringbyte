
# Stringbyte

### Description
Stringbyte is a Module for Roblox which simplifies creating strings and managing tags

## Installation
First of all, select the Latest [``Stringbyte``](https://www.roblox.com/library/9998442298) version. After you click on that, download the
[``Stringbyte.rbxm``](https://github.com/TriumvirateStudios/Stringbyte/releases/download/Stable/Stringbyte.rbxm). Once it's done drag and drop the file to Roblox Studio

### Another method

Open the toolbar in Roblox and search ``'Stringbyte'`` then you'll see a model called ``Stringbyte Module`` but
make sure it's made by @TriumvariteStudios then put it in ServerScriptService.

## Usage

### Requiring the Module
First of all, we need to insert a script to `ServerScriptService` and then require the script so that
the Module can start

```lua
local Stringbyte = require(game:GetService("ServerScriptService").Stringbyte)
--This requires the module get takes all of it's functions
```

### Registering a String
Registering a String is easy. First use the Stringbyte variable you created and add .Register
```lua
Stringbyte.Register()
```
then in brackets add the String type then name, parent, value
```lua
Stringbyte.Register("Custom", "String", workspace, "Hello World!")
```

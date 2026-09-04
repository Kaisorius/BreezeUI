# BreezeUI
BreezeUI is a lightweight Roblox Luau UI library with its own unique design.

## Loadstring

```lua
local BreezeUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaisorius/BreezeUI/refs/heads/main/BreezeUI.lua"))()
```

## Usage
Window:

```lua
local Window = BreezeUI:CreateWindow({
    Name = "BreezeUI",
    Description = "My Hub"
})
```

Window Tab:

```lua
local MainTab = Window:CreateTab("Main")
```

Elements:

Button:

```lua
local Button = MainTab:Button({
    Name = "Test Button",
    Description = "Click me",
    Callback = function()
        print("Clicked!")
    end
})
```

Toggle:

```lua
local Toggle = MainTab:Toggle({
    Name = "Test Toggle",
    Description = "Enable something",
    Callback = function(Value)
        print("Enabled:", Value)
    end
})
```

Full Example:

```lua
local BreezeUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kaisorius/BreezeUI/refs/heads/main/BreezeUI.lua"))()

local Window = BreezeUI:CreateWindow({
    Name = "BreezeUI",
    Description = "My Hub"
})

local MainTab = Window:CreateTab("Main")

local Button =MainTab:Button({
    Name = "Test Button",
    Description = "Click me",
    Callback = function()
        print("Clicked!")
    end
})

local Toggle =MainTab:Toggle({
    Name = "Test Toggle",
    Description = "Enable something",
    Callback = function(Value)
        print("Enabled:", Value)
    end
}) 
```

## Attribution
BreezeUI is a beta UI library created by Kaiser / Kaisorius.
Bugs may occur. Stay updated for future improvements.

## License
BreezeUI is an Attribution-Required Free Model (ArFM) protected by the MIT License.

Copyright © 2026 Kaiser.

You are free to use, modify, and run this minified UI library in your scripts. However, you must keep the original copyright credits intact. Claiming ownership or re-uploading BreezeUI as your own creation is strictly prohibited.

For the full legal terms, see the LICENSE file in this repository.

# BreezeUI
BreezeUI is a lightweight Roblox Luau UI library built with its own uniqueness and love.

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
MainTab:Button({
    Name = "Test Button",
    Description = "Click me",
    Callback = function()
        print("Clicked!")
    end
})
```

Toggle:

```lua
MainTab:Toggle({
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

MainTab:Button({
    Name = "Test Button",
    Description = "Click me",
    Callback = function()
        print("Clicked!")
    end
})

MainTab:Toggle({
    Name = "Test Toggle",
    Description = "Enable something",
    Callback = function(Value)
        print("Enabled:", Value)
    end
}) 
```

## Attribution
This is beta ui library made by Kaiser / Kaisorious. You may occure bug in the future. stay updated for more updates

## License
BreezeUI is licensed under the Attribution Assurance License (AAL).

Copyright © 2026 Kaisorius.

You are permitted to use, modify, and redistribute BreezeUI according to the terms of the AAL license. When redistributing BreezeUI or modified versions of it, the original author attribution must be preserved as required by the license. You may not present the original BreezeUI project or its source code as your own work or remove required attribution.

For the complete license terms, see the "LICENSE" file in this repository or the official license link: https://opensource.org/license/aal

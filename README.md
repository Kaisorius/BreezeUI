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
BreezeUI is source-available software licensed under the Attribution Assurance License (AAL).

Copyright © 2026 Kaisorius.

You may use, reverse, modify, and redistribute BreezeUI under the terms of the AAL.
When redistributing BreezeUI or any modified version, the original author attribution must be preserved.
You may not present the original BreezeUI project or its code as your own work, or remove the required attribution.
For the full license terms, see the LICENSE file in this repository or the official page:
https://opensource.org/license/aal

For the complete license terms, see the "LICENSE" file in this repository or the official license link: https://opensource.org/license/aal

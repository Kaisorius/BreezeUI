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
local Tab = Window:CreateTab("Main")
```

Elements:

Button:

```lua
local Button = Tab:Button({
    Name = "Test Button",
    Description = "Click me",
    Callback = function()
        print("Clicked!")
    end
})
```

Toggle:

```lua
local Toggle = Tab:Toggle({
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

local Tab = Window:CreateTab("Main")

local Button = Tab:Button({
    Name = "Test Button",
    Description = "Click me",
    Callback = function()
        print("Clicked!")
    end
})

local Toggle = Tab:Toggle({
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
BreezeUI is an Open Source UI Library protected by the MIT License.

Copyright © 2026 Kaiser.

You are free to use, modify, and run this UI library in your scripts. However, you must keep the original copyright and license notices intact when redistributing it. You may not present the original BreezeUI library as your own creation.

For the full legal terms, see the LICENSE file in this repository.

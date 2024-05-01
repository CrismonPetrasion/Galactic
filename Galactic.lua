local Player = game.Players.LocalPlayer

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
    
local Window = Fluent:CreateWindow({
    Title = "Key System | Galactic Hub",
    SubTitle = "By cheese",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({
        Title = "Main",
        Icon = "home",
    }),
    Key = Window:AddTab({
        Title = "Key",
        Icon = "shield"
    }),
    Settings = Window:AddTab({ 
        Title = "Settings", 
        Icon = "settings" 
    })
}

function Notify(Title, Content, SubContent, Duration)
    Fluent:Notify({
        Title = Title,
        Content = Content,
        SubContent = SubContent , -- Optional
        Duration = Duration or 2 -- Set to nil to make the notification not disappear
    })
end

do
    function MakeScriptHub()
        local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
        local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
        local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
        
        local Window = Fluent:CreateWindow({
            Title = "Universal | Galactic Hub",
            SubTitle = "By cheese",
            TabWidth = 160,
            Size = UDim2.fromOffset(580, 460),
            Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
            Theme = "Dark",
            MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
        })
        
        local Tabs = {
            Main = Window:AddTab({
                Title = "Main",
                Icon = "home",
            }),
            Misc = Window:AddTab({ 
                Title = "Misc", 
                Icon = "wrench" 
            }),
            Player = Window:AddTab({ 
                Title = "Player", 
                Icon = "user" 
            }),
            Settings = Window:AddTab({ 
                Title = "Settings", 
                Icon = "settings" 
            })
        }

        function Notify(Title, Content, SubContent, Duration)
            Fluent:Notify({
                Title = Title,
                Content = Content,
                SubContent = SubContent , -- Optional
                Duration = Duration or 2 -- Set to nil to make the notification not disappear
            })
        end

        do
            Notify("Script", "Script Logged as Universal", "", 5)
            task.wait(3)
            Notify("Anti-Cheat", "Note: That is universal script has no anti-cheat in any games", "Expample of: Blox Fruits, Slap Battles, Blade Ball", 5)

            Tabs.Main:AddParagraph({
                Title = "Galactic Hub is a powerful hub.",
                Content = "Note: Galactic Hub is currently under development and may be unstable."
            })

            -----------------------------------------------------------------------------------------------------

            Tabs.Misc:AddButton({
                Title = "Infinite Yield",
                Description = "Loads a Admin Panel with ServerSide Functions and ClientSide",
                Callback = function()
                    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
                end
            })

            -----------------------------------------------------------------------------------------------------
            Tabs.Player:AddSlider("WalkSpeedChanged", {
                Title = "Speed Hack",
                Description = "Changes your's walkspeed",
                Default = 16,
                Min = 0,
                Max = 500,
                Rounding = 1,
                Callback = function(Value)
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
                end
            })
    
            Tabs.Player:AddSlider("JumpPowerChanged", {
                Title = "Jump Power Hack",
                Description = "Changes your's jump power",
                Default = 50,
                Min = 0,
                Max = 500,
                Rounding = 1,
                Callback = function(Value)
                    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
                end
            })
    
            Tabs.Player:AddSlider("GravityChanged", {
                Title = "Gravity Hack",
                Description = "Changes your's gravity",
                Default = 196.2,
                Min = 0,
                Max = 500,
                Rounding = 1,
                Callback = function(Value)
                    workspace.Gravity = Value
                end
            })

            SaveManager:SetLibrary(Fluent)
            InterfaceManager:SetLibrary(Fluent)
            SaveManager:IgnoreThemeSettings()
            SaveManager:SetIgnoreIndexes({})
            InterfaceManager:SetFolder("FluentScriptHub")
            SaveManager:SetFolder("FluentScriptHub/UniversalScript")
            InterfaceManager:BuildInterfaceSection(Tabs.Settings)
            SaveManager:BuildConfigSection(Tabs.Settings)
            Window:SelectTab(1)
        end
    end

    _G.Key = "Galactic_D9F86FAC2F6273816E89FE751E7B8"
    _G.KeyInput = "string"

    Notify("Logged in!", "You are logged in as ".. Player.Name .. " ", 5)
    
    Tabs.Main:AddParagraph({
        Title = "Galactic Hub is a powerful hub.",
        Content = "Note: Galactic Hub is currently under development and may be unstable."
    })

    -----------------------------------------------------------

    Tabs.Key:AddInput("Input", {
        Title = "Enter Key",
        Default = "None",
        Placeholder = "None",
        Numeric = false, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
            _G.KeyInput = Value
        end
    })

    Tabs.Key:AddButton({
        Title = "Check Key",
        Description = "Cheking key that in Input",
        Callback = function()
            if _G.KeyInput == _G.Key then
                Notify("Correct Key", "You have entered the correct key", " ", 5)
                MakeScriptHub()
            else
                Notify("Incorrect Key", "You have entered the incorrect key", " ", 5)
            end
        end
    })

    SaveManager:SetLibrary(Fluent)
    InterfaceManager:SetLibrary(Fluent)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({})
    InterfaceManager:SetFolder("FluentScriptHub")
    SaveManager:SetFolder("FluentScriptHub/KeySystem")
    InterfaceManager:BuildInterfaceSection(Tabs.Settings)
    SaveManager:BuildConfigSection(Tabs.Settings)
    Window:SelectTab(1)
end

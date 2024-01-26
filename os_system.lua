--// first attempt at an os in roblox

local mouse = owner:GetMouse()
local uis = game:GetService("UserInputService")

local os = Instance.new("ScreenGui")
os.Name = "os"
os.IgnoreGuiInset = true

local wallpaper = Instance.new("ImageLabel")
wallpaper.Image = "rbxassetid://15713045022"
wallpaper.BackgroundColor3 = Color3.new(0,0,0)
wallpaper.ScaleType = 4 --// crop
wallpaper.Parent = os

local cursor = Instance.new("ImageLabel") --// so others can see your cursor
wallpaper.Image = "rbxassetid://4827658486"
wallpaper.Size = UDim2.fromOffset(32,32)
wallpaper.Position = UDim2.fromOffset(mouse.X,mouse.Y)

uis.MouseIconEnabled = false
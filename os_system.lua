--// first attempt at an os in roblox

local mouse = owner:GetMouse()
local uis = game:GetService("UserInputService")
local rs = game:GetService("RunService")

local os = Instance.new("ScreenGui")
os.Name = "os"
os.IgnoreGuiInset = true

local wallpaper = Instance.new("ImageLabel")
wallpaper.Image = "rbxassetid://15713044985"
wallpaper.BackgroundColor3 = Color3.new(0,0,0)
wallpaper.ScaleType = 0 --// 0 = stretch 4 = crop
wallpaper.Size = UDim2.fromScale(1,1)
wallpaper.Name = "wallpaper"
wallpaper.Parent = os

local cursor = Instance.new("ImageLabel") --// so others can see your cursor
cursor.Image = "rbxassetid://4827658474"
cursor.Size = UDim2.fromOffset(64,64)
cursor.Position = UDim2.fromOffset(mouse.X,mouse.Y+cursor.Size.Y.Offset)
cursor.BackgroundTransparency = 1
cursor.AnchorPoint = Vector2.new(.375,.85)
cursor.Name = "cursor"
cursor.Parent = os

uis.MouseIconEnabled = false

os.Parent = owner.PlayerGui

rs.RenderStepped:Connect(function()
    cursor.Position = UDim2.fromOffset(mouse.X,(mouse.Y+3)+cursor.Size.Y.Offset)
end)

--l/owner.PlayerGui.os.cursor.AnchorPoint = Vector2.new(.375,.85)

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local DiscordLink = "https://discord.gg/8nAR4ruXG"

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DiscordLoader"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = player:WaitForChild("PlayerGui")


local Background = Instance.new("ImageLabel")
Background.Name = "Background"
Background.Parent = ScreenGui
Background.Size = UDim2.new(0, 450, 0, 250)
Background.Position = UDim2.new(0.5, -225, 0.5, -125)
Background.BackgroundTransparency = 1
Background.Image = "rbxassetid://94393420457956"
Background.ScaleType = Enum.ScaleType.Crop

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 12)
Corner.Parent = Background


local Title = Instance.new("TextLabel")
Title.Name = "Sign"
Title.Parent = Background
Title.Size = UDim2.new(1, -40, 0, 70)
Title.Position = UDim2.new(0, 20, 0, 35)
Title.BackgroundTransparency = 1
Title.Text = "Down ko muna ayaw nyo pumasok sa discord server."
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 22
Title.Font = Enum.Font.GothamBold
Title.TextWrapped = true


local TextGradient = Instance.new("UIGradient")
TextGradient.Parent = Title
TextGradient.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 40, 40)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(170, 50, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 40, 40))
})


local CopyButton = Instance.new("TextButton")
CopyButton.Name = "CopyButton"
CopyButton.Parent = Background
CopyButton.Size = UDim2.new(0, 220, 0, 45)
CopyButton.Position = UDim2.new(0.5, -110, 1, -70)
CopyButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.BackgroundTransparency = 0.15
CopyButton.Text = "Copy Discord Link"
CopyButton.TextColor3 = Color3.fromRGB(170, 50, 255)
CopyButton.TextSize = 16
CopyButton.Font = Enum.Font.GothamBold

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.CornerRadius = UDim.new(0, 8)
ButtonCorner.Parent = CopyButton


CopyButton.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(DiscordLink)

        CopyButton.Text = "Copied!"

        task.wait(1.5)

        CopyButton.Text = "Copy Discord Link"
    else
        CopyButton.Text = "Copy not supported"

        task.wait(1.5)

        CopyButton.Text = "Copy Discord Link"
    end
end)
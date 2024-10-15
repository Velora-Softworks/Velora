local Velora = game:GetService("CoreGui"):FindFirstChild("Velora")

if not Velora then
    Velora = Instance.new("ScreenGui")
    Velora.Parent = game:GetService"CoreGui"
    Velora.Name = 'Velora'
    Velora.ResetOnSpawn = false
    Velora.IgnoreGuiInset = true

    game:GetObjects("rbxassetid://129923956313208")[1].Parent = Velora
end

return require(Velora.Notifications:WaitForChild"Notifier")

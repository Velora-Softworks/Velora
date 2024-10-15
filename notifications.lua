--[[

 @ Velora Notifications System

 - Buttons template:
 {
	 {
	 	Text = "Button";
	 	Callback = funcion()
	 		print("Button clicked!")
	 	end;
	 };
	 {
	 	Text = "Button 2";
	 	Callback = funcion()
	 		print("Button 2 clicked!")
	 	end;
	 }
 }

]]

-- Load
local Velora = game:GetService("CoreGui"):FindFirstChild("Velora")

if not Velora then
    Velora = Instance.new("ScreenGui")
    Velora.Parent = game:GetService"CoreGui"
    Velora.Name = 'Velora'
    Velora.ResetOnSpawn = false
    Velora.IgnoreGuiInset = true
end

if not Velora:FindFirstChild("Notifications") then
    game:GetObjects("rbxassetid://129923956313208")[1].Parent = Velora
end

-- Pre
local TweenService = game:GetService("TweenService")
local Notifications = Velora.Notifications
local Template = Notifications.Template

Template.Visible = false
Template:FindFirstChild("Transparency").Enabled = true
Template.UIGradient.Enabled = false
Template.UIStroke.Thickness = 0
Template.Title.TextTransparency = 1
Template.Text.TextTransparency = 1
Template.Icon.ImageTransparency = 1
Template.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Template.UIGradient.Offset = Vector2.new(.75,.75)
Template.Buttons.Template.BackgroundTransparency = 1
Template.Buttons.Template.Label.TextTransparency = 1
Template.Buttons.Template.Visible = false

-- Notifier
function Tween(a, b, c, d)
	TweenService:Create(a, b, c):Play()
	if d then task.wait(d) end
end

function Notify(title, description, icon, duration, buttons, color)
	-- Variables
	local Notification = Template:Clone()
	local Transparency = Notification:FindFirstChild("Transparency")
	
	local Title, Description = tostring(title), tostring(description)
	local Icon = icon and type(icon) == 'number' and "http://www.roblox.com/asset/?id=" .. tostring(icon)
	local Duration = duration ~= nil and type(duration) == 'number' and duration or 5
	local Buttons = type(buttons) == 'table' and #buttons > 0
	local ButtonsTable = Buttons and buttons
	local Color = color ~= nil and type(color) == 'userdata' and color.R and color.G and color.B and color
	
	Notification.Parent = Notifications
	Notification.Name = "Notification"
	Notification.Size -= UDim2.new(0, 0, 0, Notification.Buttons.AbsoluteSize.Y)
	Notification.Title.Text = tostring(title)
	Notification.Text.Text = tostring(description)
	Notification.Visible = true
	
	if Icon then
		Notification.Icon.Image = Icon
	end

	if Color then
		Notification.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(25, 25, 25)), ColorSequenceKeypoint.new(1.00, Color)}
	end
	
	if not Buttons then
		Notification.Buttons:Destroy()
	end
	
	-- Animations
	Tween(Transparency, TweenInfo.new(0.75), {Offset = Vector2.new(1,1)}, .75)

	Transparency.Enabled = false
	Notification.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Notification.UIGradient.Enabled = true
	
	Tween(Notification.UIStroke, TweenInfo.new(.35), {Thickness = 1.25})
	Tween(Notification.UIGradient, TweenInfo.new(.75), {Offset = Vector2.new(.5, .5)}, 1.05)
	Tween(Notification.Title, TweenInfo.new(1), {TextTransparency = 0})
	
	if Icon then
		Tween(Notification.Icon, TweenInfo.new(1), {ImageTransparency = 0}, .125)
	else
		Notification.Title.Position = Notification.Icon.Position
		Notification.Icon:Destroy()
		task.wait(.125)
	end
	
	Tween(Notification.Text, TweenInfo.new(1), {TextTransparency = 0})
	
	if Buttons then
		task.wait(2)
		
		Tween(Notification, TweenInfo.new(.5), {Size = Notification.Size + UDim2.new(0, 0, 0, Notification.Buttons.AbsoluteSize.Y)}, 1)
		
		local TemplateButton = Notification.Buttons.Template
		local ExistingButtons = 0
		local Clicked = false
		
		for _, button in ButtonsTable do
			local Button = TemplateButton:Clone()
			local Text = button.Text or "No text"
			local Callback = button.Callback or function() warn"No callback" end

			Button.Parent = TemplateButton.Parent

			Button.MouseEnter:Connect(function()
				if not Clicked then
					Tween(Button, TweenInfo.new(.1), {BackgroundTransparency = 0.95})
				end
			end)

			Button.MouseLeave:Connect(function()
				if not Clicked then
					Tween(Button, TweenInfo.new(.1), {BackgroundTransparency = 0.925})
				end
			end)

			Button.MouseButton1Up:Connect(function()
				if Clicked then return end
				Clicked = true
				Callback()
			end)

			Button.Visible = true
			Button.Label.Text = button.Text

			Tween(Button, TweenInfo.new(.4), {BackgroundTransparency = .925})
			Tween(Button.Label, TweenInfo.new(.4), {TextTransparency = 0})
			
			if ExistingButtons ~= #buttons then
				task.wait(.125)
			end
		end
		repeat task.wait(0.1) until Clicked
	else
		task.wait(1 + Duration)
	end
	
	if Buttons then
		Notification.Buttons.Template:Destroy()
		for i, Button in Notification.Buttons:GetChildren() do
			if Button:IsA("TextButton") then
				Tween(Button, TweenInfo.new(.4), {BackgroundTransparency = 1})
				Tween(Button.Label, TweenInfo.new(.4), {TextTransparency = 1}, 0.09375)
			end
		end
	end
	
	task.wait(.15625)
	
	if Icon then
		Tween(Notification.Icon, TweenInfo.new(.75), {ImageTransparency = 1})
	end
	
	Tween(Notification.Text, TweenInfo.new(.75), {TextTransparency = 1}, .09375)
	Tween(Notification.Title, TweenInfo.new(.75), {TextTransparency = 1}, .09375)
	Tween(Notification.UIStroke, TweenInfo.new(.2625), {Thickness = 0})
	Tween(Notification.UIGradient, TweenInfo.new(.5625), {Offset = Vector2.new(.75, .75)}, .7875)
	
	Notification.UIGradient.Enabled = false
	Notification.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Transparency.Enabled = true
	Transparency.Offset = Vector2.new(-1, -1)
	Transparency.Rotation = 180
	
	Tween(Transparency, TweenInfo.new(0.75), {Offset = Vector2.new(1, 1)}, .75)
	Tween(Notification, TweenInfo.new(.5), {Size = UDim2.new(0,0,0,0)}, .5)
	Notification:Destroy()
end

return(function(thread, title, description, icon, duration, buttons, color)
	if thread then
		task.spawn(Notify, title, description, icon, duration, buttons, color)
	else
		Notify(title, description, icon, duration, buttons, color)
	end
end)

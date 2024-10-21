-- Load
local Velora = game:GetService('CoreGui'):FindFirstChild('Velora')
local VeloraFunctions = loadstring(game:HttpGet('https://raw.githubusercontent.com/Velora-Softworks/Velora/refs/heads/main/functions.lua'))()
local JustCreated

if not Velora then
	Velora = Instance.new('ScreenGui')
	Velora.Parent = game:GetService'CoreGui'
	Velora.Name = 'Velora'
	Velora.ResetOnSpawn = false
	Velora.IgnoreGuiInset = true
	
	JustCreated = true
end

if not Velora:FindFirstChild('Notifications') then
	-- StarterGui.ScreenGui.Notifications
	local G2L = {};

	G2L["2"] = Instance.new("Frame", Velora);
	G2L["2"]["BorderSizePixel"] = 0;
	G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["2"]["Size"] = UDim2.new(0, 350, 0, 763);
	G2L["2"]["Position"] = UDim2.new(1, -379, 1, -782);
	G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2"]["Name"] = [[Notifications]];
	G2L["2"]["BackgroundTransparency"] = 1;


	-- StarterGui.ScreenGui.Notifications.UIListLayout
	G2L["3"] = Instance.new("UIListLayout", G2L["2"]);
	G2L["3"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
	G2L["3"]["Padding"] = UDim.new(0, 6);
	G2L["3"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
	G2L["3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


	-- StarterGui.ScreenGui.Notifications.Template
	G2L["4"] = Instance.new("Frame", G2L["2"]);
	G2L["4"]["BorderSizePixel"] = 0;
	G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["4"]["Size"] = UDim2.new(0, 350, 0, 141);
	G2L["4"]["Position"] = UDim2.new(-0.08858, 0, 0.71171, 0);
	G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["4"]["Name"] = [[Template]];


	-- StarterGui.ScreenGui.Notifications.Template.UIGradient
	G2L["5"] = Instance.new("UIGradient", G2L["4"]);
	G2L["5"]["Rotation"] = 60;
	G2L["5"]["Offset"] = Vector2.new(0.5, 0.5);
	G2L["5"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(26, 26, 26)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(61, 64, 70))};


	-- StarterGui.ScreenGui.Notifications.Template.Title
	G2L["6"] = Instance.new("TextLabel", G2L["4"]);
	G2L["6"]["TextWrapped"] = true;
	G2L["6"]["BorderSizePixel"] = 0;
	G2L["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["6"]["TextScaled"] = true;
	G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["6"]["TextSize"] = 14;
	G2L["6"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	G2L["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["6"]["BackgroundTransparency"] = 1;
	G2L["6"]["Size"] = UDim2.new(0, 175, 0, 20);
	G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["6"]["Text"] = [[Lorem ipsum]];
	G2L["6"]["Name"] = [[Title]];
	G2L["6"]["Position"] = UDim2.new(0, 50, 0, 17);


	-- StarterGui.ScreenGui.Notifications.Template.Text
	G2L["7"] = Instance.new("TextLabel", G2L["4"]);
	G2L["7"]["TextWrapped"] = true;
	G2L["7"]["BorderSizePixel"] = 0;
	G2L["7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["7"]["TextScaled"] = true;
	G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["7"]["TextSize"] = 14;
	G2L["7"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["7"]["BackgroundTransparency"] = 1;
	G2L["7"]["Size"] = UDim2.new(0, 300, 0, 14);
	G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["7"]["Text"] = [[Lorem ipsum dolor]];
	G2L["7"]["Name"] = [[Text]];
	G2L["7"]["Position"] = UDim2.new(0, 20, 0, 44);


	-- StarterGui.ScreenGui.Notifications.Template.UICorner
	G2L["8"] = Instance.new("UICorner", G2L["4"]);
	G2L["8"]["CornerRadius"] = UDim.new(0.05, 0);


	-- StarterGui.ScreenGui.Notifications.Template.Transparency
	G2L["9"] = Instance.new("UIGradient", G2L["4"]);
	G2L["9"]["Enabled"] = false;
	G2L["9"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)};
	G2L["9"]["Name"] = [[Transparency]];
	G2L["9"]["Offset"] = Vector2.new(-1, -1);


	-- StarterGui.ScreenGui.Notifications.Template.Buttons
	G2L["a"] = Instance.new("ScrollingFrame", G2L["4"]);
	G2L["a"]["Active"] = true;
	G2L["a"]["BorderSizePixel"] = 0;
	G2L["a"]["CanvasSize"] = UDim2.new(2, 0, 0, 0);
	G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["a"]["Name"] = [[Buttons]];
	G2L["a"]["Size"] = UDim2.new(0, 310, 0, 37);
	G2L["a"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["a"]["Position"] = UDim2.new(0, 20, 0, 74);
	G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["a"]["ScrollBarThickness"] = 0;
	G2L["a"]["BackgroundTransparency"] = 1;


	-- StarterGui.ScreenGui.Notifications.Template.Buttons.Template
	G2L["b"] = Instance.new("TextButton", G2L["a"]);
	G2L["b"]["BorderSizePixel"] = 0;
	G2L["b"]["AutoButtonColor"] = false;
	G2L["b"]["TextSize"] = 14;
	G2L["b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["b"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
	G2L["b"]["Size"] = UDim2.new(0, 74, 0, 37);
	G2L["b"]["BackgroundTransparency"] = 0.925;
	G2L["b"]["Name"] = [[Template]];
	G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["b"]["Text"] = [[]];
	G2L["b"]["Position"] = UDim2.new(0, 0, -1.69048, 0);


	-- StarterGui.ScreenGui.Notifications.Template.Buttons.Template.UICorner
	G2L["c"] = Instance.new("UICorner", G2L["b"]);
	G2L["c"]["CornerRadius"] = UDim.new(0.1, 0);


	-- StarterGui.ScreenGui.Notifications.Template.Buttons.Template.Label
	G2L["d"] = Instance.new("TextLabel", G2L["b"]);
	G2L["d"]["TextWrapped"] = true;
	G2L["d"]["BorderSizePixel"] = 0;
	G2L["d"]["TextScaled"] = true;
	G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["d"]["TextSize"] = 14;
	G2L["d"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	G2L["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["d"]["BackgroundTransparency"] = 1;
	G2L["d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["d"]["Size"] = UDim2.new(0.8, 0, 0.475, 0);
	G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["d"]["Text"] = [[Button]];
	G2L["d"]["Name"] = [[Label]];
	G2L["d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


	-- StarterGui.ScreenGui.Notifications.Template.Buttons.UIListLayout
	G2L["e"] = Instance.new("UIListLayout", G2L["a"]);
	G2L["e"]["Padding"] = UDim.new(0, 6);
	G2L["e"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
	G2L["e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
	G2L["e"]["FillDirection"] = Enum.FillDirection.Horizontal;


	-- StarterGui.ScreenGui.Notifications.Template.UIStroke
	G2L["f"] = Instance.new("UIStroke", G2L["4"]);
	G2L["f"]["Transparency"] = 0.75;
	G2L["f"]["Thickness"] = 1.25;
	G2L["f"]["Color"] = Color3.fromRGB(255, 255, 255);


	-- StarterGui.ScreenGui.Notifications.Template.Icon
	G2L["10"] = Instance.new("ImageLabel", G2L["4"]);
	G2L["10"]["BorderSizePixel"] = 0;
	G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["10"]["Image"] = [[http://www.roblox.com/asset/?id=6034308946]];
	G2L["10"]["Size"] = UDim2.new(0, 25, 0, 25);
	G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["10"]["BackgroundTransparency"] = 1;
	G2L["10"]["Name"] = [[Icon]];
	G2L["10"]["Position"] = UDim2.new(0, 20, 0, 14);
end

-- Pre
local TweenService = game:GetService('TweenService')
Notifications = Velora.Notifications
Template = Notifications.Template

Template.Visible = false
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
Template:FindFirstChild('Transparency').Enabled = true

if JustCreated then
	local Manage = {}
	
	function SetUDim2()
		Notifications.Position = VeloraFunctions:GetUDim2(UDim2.new(1, -379, 1, -782))

		for _Instance, Size in pairs(Manage) do
			_Instance.Size = VeloraFunctions:GetUDim2(Size, 'Auto')
		end
	end
	
	for Descendant in pairs(Template:GetDescendants()) do
		if pcall(function()return Descendant.Size or error('') end) then
			Manage[Descendant] = Descendant.Size
		end
	end
	
	workspace.Camera:GetPropertyChangedSignal('ViewportSize'):Connect(SetUDim2)
	SetUDim2()
end

-- Notifier
function Notify(data)
	-- Variables
	local Notification = Template:Clone()
	local Transparency = Notification:FindFirstChild('Transparency')

	local Title, Description = tostring(data.Title), tostring(data.Description)
	local Icon = data.Icon and type(data.Icon) == 'number' and 'http://www.roblox.com/asset/?id=' .. tostring(data.Icon)
	local Duration = data.Duration ~= nil and type(data.Duration) == 'number' and data.Duration or 5
	local Buttons = type(data.Buttons) == 'table' and #data.Buttons > 0
	local ButtonsTable = Buttons and data.Buttons
	local Color = data.Color ~= nil and type(data.Color) == 'userdata' and data.Color.R and data.Color.G and data.Color.B and data.Color

	Notification.Parent = Notifications
	Notification.Name = 'Notification'
	Notification.Size -= UDim2.new(0, 0, Notification.Buttons.Size.Y.Scale, Notification.Buttons.Size.Y.Offset)
	Notification.Title.Text = Title
	Notification.Text.Text = Description
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
	VeloraFunctions:Tween(nil, {Transparency, TweenInfo.new(0.75), {Offset = Vector2.new(1,1)}}, true)

	Transparency.Enabled = false
	Notification.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Notification.UIGradient.Enabled = true

	VeloraFunctions:Tween(nil, {Notification.UIStroke, TweenInfo.new(.35), {Thickness = 1.25}})
	VeloraFunctions:Tween(nil, {Notification.UIGradient, TweenInfo.new(.75), {Offset = Vector2.new(.5, .5)}}, nil, 1.05)
	VeloraFunctions:Tween(nil, {Notification.Title, TweenInfo.new(1), {TextTransparency = 0}})

	if Icon then
		VeloraFunctions:Tween(nil, {Notification.Icon, TweenInfo.new(1), {ImageTransparency = 0}}, nil, .125)
	else
		Notification.Title.Position = Notification.Icon.Position
		Notification.Icon:Destroy()
		task.wait(.125)
	end

	VeloraFunctions:Tween(nil, {Notification.Text, TweenInfo.new(1), {TextTransparency = 0}})

	if Buttons then
		task.wait(2)

		VeloraFunctions:Tween(nil, {Notification, TweenInfo.new(.5), {Size = Notification.Size + UDim2.new(0, 0, Notification.Buttons.Size.Y.Scale, Notification.Buttons.Size.Y.Offset)}}, nil, 1)

		local TemplateButton = Notification.Buttons.Template
		local ExistingButtons = 0
		local Clicked = false

		for _, button in ButtonsTable do
			local Button = TemplateButton:Clone()
			local Text = button.Text or 'No text'
			local Callback = button.Callback or function() warn'No callback' end

			Button.Parent = TemplateButton.Parent

			Button.MouseEnter:Connect(function()
				if not Clicked then
					VeloraFunctions:Tween(nil, {Button, TweenInfo.new(.1), {BackgroundTransparency = 0.95}})
				end
			end)

			Button.MouseLeave:Connect(function()
				if not Clicked then
					VeloraFunctions:Tween(nil, {Button, TweenInfo.new(.1), {BackgroundTransparency = 0.925}})
				end
			end)

			Button.MouseButton1Up:Connect(function()
				if Clicked then return end
				Clicked = true
				Callback()
			end)

			Button.Visible = true
			Button.Label.Text = button.Text

			VeloraFunctions:Tween(nil, {Button, TweenInfo.new(.4), {BackgroundTransparency = .925}})
			VeloraFunctions:Tween(nil, {Button.Label, TweenInfo.new(.4), {TextTransparency = 0}})

			if ExistingButtons ~= #Buttons then
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
			if Button:IsA('TextButton') then
				VeloraFunctions:Tween(nil, {Button, TweenInfo.new(.4), {BackgroundTransparency = 1}})
				VeloraFunctions:Tween(nil, {Button.Label, TweenInfo.new(.4), {TextTransparency = 1}}, nil, .09375)
			end
		end
	end

	task.wait(.15625)

	if Icon then
		VeloraFunctions:Tween(nil, {Notification.Icon, TweenInfo.new(.75), {ImageTransparency = 1}})
	end

	VeloraFunctions:Tween(nil, {Notification.Text, TweenInfo.new(.75), {TextTransparency = 1}}, nil, .09375)
	VeloraFunctions:Tween(nil, {Notification.Title, TweenInfo.new(.75), {TextTransparency = 1}}, nil, .09375)
	VeloraFunctions:Tween(nil, {Notification.UIStroke, TweenInfo.new(.2625), {Thickness = 0}})
	VeloraFunctions:Tween(nil, {Notification.UIGradient, TweenInfo.new(.5625), {Offset = Vector2.new(.75, .75)}}, .7875)

	Notification.UIGradient.Enabled = false
	Notification.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Transparency.Enabled = true
	Transparency.Offset = Vector2.new(-1, -1)
	Transparency.Rotation = 180

	VeloraFunctions:Tween(nil, {Transparency, TweenInfo.new(0.75), {Offset = Vector2.new(1, 1)}}, true)
	VeloraFunctions:Tween(nil, {Notification, TweenInfo.new(.5), {Size = UDim2.new(0,0,0,0)}}, true)
	Notification:Destroy()
end

return(function(data, noThread)
	if noThread then
		Notify(data)
	else
		task.spawn(Notify, data)
	end
end)

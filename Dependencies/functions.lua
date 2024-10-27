-- Create variables
local VeloraFunctions = {}
local TweenService = game:GetService("TweenService")

local OriginalSize = Vector2.new(1914, 925)

-- Velora functions
function VeloraFunctions:Tween(PreDelay, Data, WaitUntilFinished, _Delay)
	if PreDelay then
		task.wait(PreDelay)
	end
	
	local Tween = TweenService:Create(unpack(Data))
	Tween:Play()
	
	if WaitUntilFinished then
		Tween.Completed:Wait()
	end
	
	if _Delay then
		task.wait(_Delay)
	end
	
	return PreDelay
end

function VeloraFunctions:GetUDim2(_UDim2, Determinator)
	local Camera = workspace.Camera
	
	if Determinator == 'X' then
		local SizeMulti = Camera.ViewportSize.X / OriginalSize.X
		local MultidX = _UDim2.X.Offset * SizeMulti
		local InstMulti = _UDim2.Y.Offset / _UDim2.X.Offset
		
		return UDim2.new(_UDim2.X.Scale, MultidX, _UDim2.Y.Scale, MultidX * InstMulti)
	elseif Determinator == 'Y' then
		local SizeMulti = Camera.ViewportSize.Y / OriginalSize.Y
		local MultidY = _UDim2.Y.Offset * SizeMulti
		local InstMulti = _UDim2.X.Offset / _UDim2.Y.Offset

		return UDim2.new(_UDim2.X.Scale, MultidY * InstMulti, _UDim2.Y.Scale, MultidY)
	elseif Determinator == 'Auto' then
		if Camera.ViewportSize.X > Camera.ViewportSize.Y then
			return VeloraFunctions:GetSize(_UDim2, 'X')
		else
			return VeloraFunctions:GetSize(_UDim2, 'Y')
		end
	else
		local New = Camera.ViewportSize.X / OriginalSize.X
		local New2 = Camera.ViewportSize.Y / OriginalSize.Y
		
		return (UDim2.new(_UDim2.X.Scale, New * _UDim2.X.Offset, _UDim2.Y.Scale, New2 * _UDim2.Y.Offset))
	end
end

return VeloraFunctions

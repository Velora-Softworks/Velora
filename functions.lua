-- Create variables for services
local VeloraFunctions = {}
local TweenService = game:GetService("TweenService")

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

return VeloraFunctions

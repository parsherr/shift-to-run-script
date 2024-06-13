local userInput = game:GetService("UserInputService")

local players = game:GetService("Players")


 
local sprintSpeed = 35 --oyundaki herkesin shift bastıktan sonraki hızı

local walkSpeed = 20 --oyundaki herkesin yürüyüş hızı



local player = players.LocalPlayer



local function beginSprint(input, gameProcessed)

	if not gameProcessed then        

		if input.UserInputType == Enum.UserInputType.Keyboard then

			local keycode = input.KeyCode

			if keycode == Enum.KeyCode.LeftShift then 

				player.Character.Humanoid.WalkSpeed = sprintSpeed

			end

		end

	end

end



local function endSprint(input, gameProcessed)

	if not gameProcessed then

		if input.UserInputType == Enum.UserInputType.Keyboard then

			local keycode = input.KeyCode

			if keycode == Enum.KeyCode.LeftShift then

				player.Character.Humanoid.WalkSpeed = walkSpeed

			end

		end

	end

end



userInput.InputBegan:Connect(beginSprint)

userInput.InputEnded:Connect(endSprint)
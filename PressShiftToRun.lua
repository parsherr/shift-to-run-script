local userInput = game:GetService("UserInputService")

local players = game:GetService("Players")



local sprintSpeed = 25 --oyundaki herkesin shift bastıktan sonraki hızı

local walkSpeed = 16 --oyundaki herkesin yürüyüş hızı



local sprinting = false



local player = players.LocalPlayer



local function beginSprint(input, gameProcessed)

	if not gameProcessed then        

		if input.UserInputType == Enum.UserInputType.Keyboard then

			local keycode = input.KeyCode

			if keycode == Enum.KeyCode.LeftShift then 

				sprinting = not sprinting

				if sprinting then

					player.Character.Humanoid.WalkSpeed = sprintSpeed

				else

					player.Character.Humanoid.WalkSpeed = walkSpeed

				end



			end

		end

	end

end





userInput.InputBegan:Connect(beginSprint)
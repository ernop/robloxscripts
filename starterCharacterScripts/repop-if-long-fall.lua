local falling = false
local fallst = 0

function checkFalling()
	if isfalling then
		local gap = tick()-fallst
		print("gap:",gap)
		if gap > 3 then
			isfalling=false
			fallst=0
			repop()
		end
		spawn(function() wait(0.2) checkFalling() end)
	end
end

function freefalling()
	if isfalling then
		checkFalling()
	else
		isfalling=true
		fallst=tick()
	end
end

function touched(player)
	if isfalling then
		isfalling=false
		fallst=0
	end
end

local startPos = CFrame.new(Vector3.new(129.003, 56.5, -227.003))
function repop()
	print("respawning since you fell too long.")
	local char = script.Parent
	char:FindFirstChild("HumanoidRootPart").CFrame=startPos
end

game.Players.LocalPlayer.Character.Humanoid.FreeFalling:connect(freefalling)
game.Players.LocalPlayer.Character.Humanoid.Jumping:connect(freefalling)
game.Players.LocalPlayer.Character.Humanoid.Touched:connect(touched)
game.Players.LocalPlayer.Character.Humanoid.Running:connect(touched)

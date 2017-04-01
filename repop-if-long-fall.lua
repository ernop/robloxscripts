local falling = false
local fallst = 0

function freefalling(hit)
	if isfalling then
		local gap = tick()-fallst
		if gap > 1.2 then
			repop()
		end
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

local startPos = CFrame.new(Vector3.new(40, 120, 0))
function repop()
	local char = script.Parent
	char:FindFirstChild("HumanoidRootPart").CFrame=startPos
end

game.Players.LocalPlayer.Character.Humanoid.FreeFalling:connect(freefalling)
game.Players.LocalPlayer.Character.Humanoid.Touched:connect(touched)


local isfalling=false
local fallst=0

function fallTimer(hit)
	if isfalling then
	else
		isfalling=true
		fallst=tick()
	end
end

function touched(player)
	if isfalling then
		isfalling=false
		local gap = tick()-fallst
		if gap<0.1 then
		else
			print("fell for ", gap)
		end
		fallst=0
	end
end

game.Players.LocalPlayer.Character.Humanoid.FreeFalling:connect(fallTimer)
game.Players.LocalPlayer.Character.Humanoid.Touched:connect(touched)
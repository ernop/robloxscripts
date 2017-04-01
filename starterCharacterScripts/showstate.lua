--charscript

function show(n)
	local function inner()
		print(n)
	end
	return inner
end

game.Players.LocalPlayer.Character.Humanoid.Ragdoll:Connect(show("Ragdoll"))
game.Players.LocalPlayer.Character.Humanoid.FreeFalling:Connect(show("FreeFalling"))
game.Players.LocalPlayer.Character.Humanoid.FallingDown:Connect(show("FallingDown"))
game.Players.LocalPlayer.Character.Humanoid.Strafing:Connect(show("Strafing"))
game.Players.LocalPlayer.Character.Humanoid.Jumping:Connect(show("Jumping"))
game.Players.LocalPlayer.Character.Humanoid.Running:Connect(show("Running"))
game.Players.LocalPlayer.Character.Humanoid.Died:Connect(show("Died"))
game.Players.LocalPlayer.Character.Humanoid.Seated:Connect(show("Seated"))
game.Players.LocalPlayer.Character.Humanoid.Touched:Connect(show("Touched"))
game.Players.LocalPlayer.Character.Humanoid.Swimming:Connect(show("Swimming"))
game.Players.LocalPlayer.Character.Humanoid.PlatformStanding:Connect(show("PlatformStanding"))
game.Players.LocalPlayer.Character.Humanoid.HealthChanged:Connect(show("HealthChanged"))
game.Players.LocalPlayer.Character.Humanoid.GettingUp:Connect(show("GettingUp"))
game.Players.LocalPlayer.Character.Humanoid.Climbing:Connect(show("Climbing"))
game.Players.LocalPlayer.Character.Humanoid.StateChanged:Connect(show("StateChanged"))
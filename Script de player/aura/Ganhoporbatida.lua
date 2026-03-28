------------------> Colocar dentro da ferramenta de ataque
local tool = script.Parent
local AURA_PER_HIT = 10

tool.Activated:Connect(function()
    tool.Handle.Touched:Connect(function()
        local character = hit.Parent
        local targetHumanoid=character:FindFiristChild("Humanoid")
        local player = game.Players:GetPlayerFromCharacter(tool.Parent)

      if targetHumanoid and player and character.Name ~= player.Name then

      game.ReplicatedStorage.AuraFeedback:FireClient(player, AURA_PER_HIT)

local DataStoreService = game:GetService("DataStoreService")
local auraData = DataStoreService:GetDataStore("AuraSaveSystem")

game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	local aura = Instance.new("IntValue")
	aura.Name = "Aura"
	aura.Parent = leaderstats

	-- Carregar dados salvos
	local success, savedValue = pcall(function()
		return auraData:GetAsync(tostring(player.UserId))
	end)

	if success and savedValue then
		aura.Value = savedValue
	end
end)

-- Salvar ao sair
game.Players.PlayerRemoving:Connect(function(player)
	pcall(function()
		auraData:SetAsync(tostring(player.UserId), player.leaderstats.Aura.Value)
	end)
end)

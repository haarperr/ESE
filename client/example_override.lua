--[[
Simple override for Game.GetPlayers

Old Code:
	ESX.Game.GetPlayers = function()
		local players = {}

		for _,player in ipairs(GetActivePlayers()) do
			local ped = GetPlayerPed(player)

			if DoesEntityExist(ped) then
				table.insert(players, player)
			end
		end

		return players
	end
]]

-- Ensure ESE.Game exists and is overriden by ESE
ESE.Game = {}

-- Add our override
ESE.Game.GetPlayers = function()
	-- According to the cookbook post about the GET_ACTIVE_PLAYERS native, (https://cookbook.fivem.net/2019/06/29/get_active_players-the-replacement-for-player-loops/)
	-- Only players with an active ped are returned therefore, the check for a player ped in the original function is unneeded
	return GetActivePlayers()
end
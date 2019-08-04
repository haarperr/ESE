--[[
	ESX Compatibility

	`_ESX` contains all items that *would* be assigned to `ESX` eg, `ESX.Players = {}` would end up with `_ESX.Players = {}`
	All indexes of `ESX` point first to `ESE` which if not found in `ESE`, point to `_ESX`
	This enables a very easy override system.

	Please note:
	If this files ESX or ESE tables are overwrote, the whole system breaks so...
	When updating esx_fallbacks, be sure to comment out any line that contains `ESX = {}` (client/functions.lua and server/common.lua)

	ESX >> ESE >> (_ESE)
]]

-- Setup table objects
ESE = {}
local _ESX = {}
ESX = {}

-- Set metatables
setmetatable(ESE, {
	-- Point all indexes that don't exist in ESE to _ESX
	__index = _ESX,

	-- Ensure all newly created tables witin ESE follow the same _ESX inheritance
	__newindex = function(self, key, value)
		if type(value) == "table" then
			setmetatable(value, {
				__index = (getmetatable(self).__index)[key],

				__newindex = getmetatable(self).__newindex
			})
		end
	
		rawset(self, key, value)
	end,
})

setmetatable(ESX, {
	-- Point all indexes that don't exist in ESX to ESE
	__index = ESE,

	-- Force all table assignments to _ESX
	__newindex = function(self, key, value)
		rawset(_ESX, key, value)
	end,
})
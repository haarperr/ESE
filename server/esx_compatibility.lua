--[[
	ESX Compatibility

	`_ESX` contains all items that *would* be assigned to `ESX` eg, `ESX.Players = {}` would end up with `_ESX.Players = {}`
	All indexes of `ESX` point first to `ESE` which if not found in `ESE`, point to `_ESX`
	This enables a very easy override system

	ESX >> ESE >> (_ESE)
]]

-- Setup table objects
ESE = {}
local _ESX = {}
ESX = {}

-- Set metatables
setmetatable(ESE, {
	-- Point all indexes that don't exist in ESE to _ESX
	__index = _ESX
})

setmetatable(ESX, {
	-- Point all indexes that don't exist in ESX to ESE
	__index = ESE,

	-- Force all table assignments to _ESX
	__newindex = function(self, key, value)
		rawset(_ESX, key, value)
	end,
})
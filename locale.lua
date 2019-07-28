Locales = {}

function _(str, ...)  -- Translate string

	if Locales[Config.Locale] ~= nil then

		if Locales[Config.Locale][str] ~= nil then
			return string.format(Locales[Config.Locale][str], ...)
		else
			return string.format('Translation [%s][%s] does not exist!', Config.Locale, str)
		end

	else
		return string.format('Locale [%s] does not exist!', Config.Locale)
	end

end

function _U(str, ...) -- Translate string first char uppercase
	return tostring(_(str, ...):gsub("^%l", string.upper))
end

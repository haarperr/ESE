resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

name 'ESE (Essential Mode Enhanced)'
description 'Drag and drop replacement for ESX'
author 'ESE Team (https://github.com/ese-team)'
version 'v1.0.0'
url 'https://github.com/ese-team/ese/'

-- Developer Notes:
--[[
	The loading order is very important
	
	Before any ESE or ESX functions, the `esx_compatibility.lua` file needs to be loaded.
	Then, ESX needs to be loaded in it's exact order from esx_fallbacks.
	Finally, ESE code can be loaded.
]]

server_scripts {
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',

	'locale.lua',
	'locales/*.lua',

	'config.lua',
	'config.weapons.lua',
	
	'common/esx_compatibility.lua',

	'esx_fallbacks/server/common.lua',
	'esx_fallbacks/server/classes/player.lua',
	'esx_fallbacks/server/functions.lua',
	'esx_fallbacks/server/paycheck.lua',
	'esx_fallbacks/server/main.lua',
	'esx_fallbacks/server/commands.lua',

	'esx_fallbacks/common/modules/math.lua',
	'esx_fallbacks/common/modules/table.lua',
	'esx_fallbacks/common/functions.lua'
}

client_scripts {
	'locale.lua',
	'locales/*.lua',

	'config.lua',
	'config.weapons.lua',

	'common/esx_compatibility.lua',

	'esx_fallbacks/client/common.lua',
	'esx_fallbacks/client/entityiter.lua',
	'esx_fallbacks/client/functions.lua',
	'esx_fallbacks/client/wrapper.lua',
	'esx_fallbacks/client/main.lua',

	'esx_fallbacks/client/modules/death.lua',
	'esx_fallbacks/client/modules/scaleform.lua',
	'esx_fallbacks/client/modules/streaming.lua',

	'esx_fallbacks/common/modules/math.lua',
	'esx_fallbacks/common/modules/table.lua',
	'esx_fallbacks/common/functions.lua',
}

ui_page {
	'html/ui.html'
}

files {
	'locale.js',
	'html/ui.html',

	'html/css/app.css',

	'html/js/mustache.min.js',
	'html/js/wrapper.js',
	'html/js/app.js',

	'html/fonts/pdown.ttf',
	'html/fonts/bankgothic.ttf',

	'html/img/accounts/bank.png',
	'html/img/accounts/black_money.png'
}


exports {
	'getSharedObject'
}

server_exports {
	'getSharedObject'
}

dependencies {
	'mysql-async',
	'essentialmode',
	'esplugin_mysql',
	'async',
}
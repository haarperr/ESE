resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

name 'ESE (Essential Mode Enhanced)'
description 'Drag and drop replacement for ESX'
author 'ESE Team (https://github.com/ese-team)'
version 'v1.0.0'
url 'https://github.com/ese-team/ese/'

shared_scripts {
	-- Global locale files
	'locale.lua',
	'locales/*.lua',

	-- ESE and weapon config
	'config.lua',
	'config.weapons.lua',

	-- Common scripts
	'common/modules/*.lua',
	'common/functions.lua',
}

server_scripts {
	-- MySQL Async Lib
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',

	-- Server scripts
	'server/*.lua',
}

client_scripts {
	-- Client scripts
	'client/*.lua',
	'client/modules/*.lua',
}

-- ESE NUI page
ui_page 'html/ui.html'

files {
	-- ESE UI files
	'locale.js',
	'html/*.html',
	'html/css/*.css',
	'html/js/mustache.min.js',
	'html/js/*.js',
	'html/fonts/*.ttf',
	'html/img/accounts/*.png',
}

exports {
	'getSharedObject',
}

server_exports {
	'getSharedObject',
}

dependencies {
	'mysql-async', 		-- MySQL Async (https://github.com/brouznouf/fivem-mysql-async)
	'essentialmode',	-- Essential Mode (https://github.com/kanersps/essentialmode)
	'esplugin_mysql',	-- Essential Mode MySQL custom data plugin (https://github.com/kanersps/esplugin_mysql)
	'async',
}

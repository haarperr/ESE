resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

name 'ESE (Essential Mode Enhanced)'
description 'Drag and drop replacement for ESX'
author 'ESE Team (https://github.com/ese-team)'
version 'v1.0.0'
url 'https://github.com/ese-team/ese/'

server_scripts {
	'@async/async.lua',
	'@mysql-async/lib/MySQL.lua',

	'locale.lua',
	'locales/*.lua',

	'config.lua',
	'config.weapons.lua',

	'server/common.lua',
	'server/classes/player.lua',
	'server/functions.lua',
	'server/paycheck.lua',
	'server/main.lua',
	'server/commands.lua',

	'common/modules/math.lua',
	'common/modules/table.lua',
	'common/functions.lua'
}

client_scripts {
	'locale.lua',
	'locales/*.lua',

	'config.lua',
	'config.weapons.lua',

	'client/common.lua',
	'client/entityiter.lua',
	'client/functions.lua',
	'client/wrapper.lua',
	'client/main.lua',

	'client/modules/death.lua',
	'client/modules/scaleform.lua',
	'client/modules/streaming.lua',

	'common/modules/math.lua',
	'common/modules/table.lua',
	'common/functions.lua'
}

ui_page {
	'html/ui.html'
}

files {
	'locale.js',
	'html/ui.html',
	'html/css/app.css',
	'html/js/*.js',
	'html/fonts/*.ttf',
	'html/img/accounts/*.png',
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
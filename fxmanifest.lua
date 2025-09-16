fx_version 'cerulean'
game 'gta5'

name "old_lootBox"
description "case opening"
author "OldMoney"
version "1.0.0"

ui_page 'web/dist/index.html'

files {
	'web/dist/index.html',
	'web/dist/assets/**',
	'web/dist/sounds/**'
}

shared_scripts {
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}

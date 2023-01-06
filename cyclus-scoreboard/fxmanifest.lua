fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'Cyclus Scripts | Atrixx#0001'
description 'Scoreboard Script'
version '1.0.0'

lua54 'yes'

ui_page "HTML/index.html"

escrow_ignore {
    'config.lua',
    'client/function.lua'
}

client_scripts {
    'client/*',
    'config.lua'
}

server_scripts {
    'server/*',
    'config.lua'
}

files {
    'HTML/*',
    "HTML/img/*"
}
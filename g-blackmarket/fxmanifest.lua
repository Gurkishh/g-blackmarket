fx_version 'cerulean'
games { 'gta5' }

author 'Gustav#0001'
description 'gs-springis, inriktning.'
version '1.0.0'

client_scripts {
    'client/client.lua',
    -- 'client/functions.lua',
}
server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server/server.lua',
}

shared_script 'config.lua'

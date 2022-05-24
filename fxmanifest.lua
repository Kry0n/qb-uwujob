fx_version 'cerulean'
game 'gta5'
author "MechoMancer#9139"
version '1.1.4'

description 'MechoMancer\'s FIXED VERSION of some kid\'s qb-uWu CatCafe job'

client_scripts{
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/client.lua',
    'client/chairs.lua',
    'client/cats.lua',
    'client/menus.lua',
}
server_script 'server.lua'
shared_script 'config.lua'

escrow_ignore {
    'config.lua',   -- Ignore all .yft files in any subfolder
}

lua54 'yes'server_scripts { '@mysql-async/lib/MySQL.lua' }
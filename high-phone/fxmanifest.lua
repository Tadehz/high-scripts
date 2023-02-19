fx_version 'cerulean'
game 'gta5'

author 'highrider#2873'
description 'High-Phone'
version '2.1.0'
lua54 'yes'

ui_page 'html/index.html'

dependencies {
    '/server:4752'
}

shared_scripts {
    'config.lua',
    'locales/*.lua',
    'sh_config.lua', -- IF YOU RUN QBCORE REMOVE THIS LINE & FOLLOW STEP BELOW
    --'sh_config_QB.lua', -- REMOVE THE -- IN FRONT OF 'sh_config_QB.lua' IF YOU RUN QBCORE
    'utils/shared.lua'
}

client_scripts {
    'client/*.lua',
    -- https://github.com/Xogy/xsound
    'client/xsound/*.lua',
    'client/xsound/**/*.lua'
}

server_scripts {
    '@mysql-async/lib/MySQL.lua', -- IF YOU RUN OXMYSQL REMOVE THIS LINE & FOLLOW STEP BELOW
    --'@oxmysql/lib/MySQL.lua', -- REMOVE THE -- IN FRONT OF '@oxmysql/lib/MySQL.lua' IF YOU RUN OXMYSQL
    'sv_config.lua',
    'utils/server.lua',
    'server/*.lua'
}

files {
    'config.js',
    'locales/*.js',
    'html/*.*',
    'html/css/*.css',
    'html/js/*.js',
    'html/js/xsound/*.js',
    'html/fonts/*.*',
    'html/media/*.*',
    'html/media/**/*.*'
}

escrow_ignore {
    'config.lua',
    'sv_config.lua',
    'sh_config.lua',
    'sh_config_QB.lua',
    'qb_items.lua',
    'locales/*.lua',
    -- https://github.com/Xogy/xsound
    'client/xsound/*.lua',
    'client/xsound/**/*.lua'
}
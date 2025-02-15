-- vim.g.dashboard_custom_header = {
--     '███╗   ██╗██╗   ██╗ ██████╗ ██████╗ ██████╗ ███████╗',
--     '████╗  ██║██║   ██║██╔════╝██╔═══██╗██╔══██╗██╔════╝',
--     '██╔██╗ ██║██║   ██║██║     ██║   ██║██║  ██║█████╗',
--     '██║╚██╗██║╚██╗ ██╔╝██║     ██║   ██║██║  ██║██╔══╝',
--     '██║ ╚████║ ╚████╔╝ ╚██████╗╚██████╔╝██████╔╝███████╗',
--     '╚═╝  ╚═══╝  ╚═══╝   ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝'
-- }
-- vim.g.dashboard_custom_header = {
--
-- '      _..._                                                                           ',
-- '    .\'     `.   ██      ██    ██ ███    ██  █████  ██████  ██    ██ ██ ███    ███ ',
-- '   :         :  ██      ██    ██ ████   ██ ██   ██ ██   ██ ██    ██ ██ ████  ████ ',
-- '   :         :  ██      ██    ██ ██ ██  ██ ███████ ██████  ██    ██ ██ ██ ████ ██ ',
-- '   `.       .\'  ██      ██    ██ ██  ██ ██ ██   ██ ██   ██  ██  ██  ██ ██  ██  ██ ',
-- '     `-...-\'    ███████  ██████  ██   ████ ██   ██ ██   ██   ████   ██ ██      ██ ',
--
-- }

-- vim.g.dashboard_custom_header = {

-- '                 _..._                                                                           ',
-- '               .\'   (_`.    _                         __     ___           ',
-- '              :  .      :  | |   _   _ _ __   __ _ _ _\\ \\   / (_)_ __ ___  ',
-- '              :)    ()  :  | |  | | | | \'_ \\ / _` | \'__\\ \\ / /| | \'_ ` _ \\ ',
-- '              `.   .   .\'  | |__| |_| | | | | (_| | |   \\ V / | | | | | | |',
-- '                `-...-\'    |_____\\__,_|_| |_|\\__,_|_|    \\_/  |_|_| |_| |_|',

-- }
vim.g.dashboard_custom_header = {
'    ██╗░░██╗██████╗░░░░░░░░█████╗░░█████╗░██████╗░███████╗',
'    ██║░░██║██╔══██╗░░░░░░██╔══██╗██╔══██╗██╔══██╗██╔════╝',
'    ███████║██████╔╝█████╗██║░░╚═╝██║░░██║██║░░██║█████╗░░',
'    ██╔══██║██╔═══╝░╚════╝██║░░██╗██║░░██║██║░░██║██╔══╝░░',
'    ██║░░██║██║░░░░░░░░░░░╚█████╔╝╚█████╔╝██████╔╝███████╗',
'    ╚═╝░░╚═╝╚═╝░░░░░░░░░░░░╚════╝░░╚════╝░╚═════╝░╚══════╝'                                     
}

vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
    a = {description = {'  Find File          '}, command = 'Telescope find_files'},
    b = {description = {'  Recently Used Files'}, command = 'Telescope oldfiles'},
    c = {description = {'  Load Last Session  '}, command = 'SessionLoad'},
    d = {description = {'  Find Word          '}, command = 'Telescope live_grep'},
    e = {description = {'  Settings           '}, command = ':e ~/.config/nvim/lv-settings.lua'},
    f = {description = {'  Marks              '}, command = 'Telescope marks'}
}

vim.cmd('let b:indent_blankline_enabled = v:false')

vim.g.dashboard_session_directory = '~/.cache/nvim/session'
vim.g.dashboard_custom_footer = {'Neovim 0.5.0'}

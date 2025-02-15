vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ','

-- Save
vim.cmd([[
	nnoremap <silent><c-s> :<c-u>update<cr>
	vnoremap <silent><c-s> <c-c>:update<cr>gv
	inoremap <silent><c-s> <c-o>:update<cr><esc>
]])

-- Telescope (searching)
vim.cmd([[
	nnoremap <leader><leader>b :Telescope buffers<cr>
	nnoremap <leader><leader>p :Telescope live_grep<cr>
	nnoremap <leader><leader>f :Telescope find_files<cr>
	nnoremap <leader><leader>m :Telescope marks<cr>
	nnoremap <leader><leader>s :Telescope lsp_document_symbols<cr>
]])

-- Buffer controls
vim.cmd([[
	nnoremap X :bd!<cr>
	vnoremap X :bd!<cr>
]])

-- Code navigation
vim.cmd([[
	nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>
	nnoremap <silent> <C-]> :lua vim.lsp.buf.definition()<CR>
]])

-- no hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', {noremap = true, silent = true})

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>1', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '-', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- better window movement
vim.cmd([[
  nnoremap <silent> <S-Left> <C-w>h
  nnoremap <silent> <S-Down> <C-w>j
  nnoremap <silent> <S-Up> <C-w>k
  nnoremap <silent> <S-Right> <C-w>l
  vnoremap <silent> <S-Left> <C-w>h
  vnoremap <silent> <S-Down> <C-w>j
  vnoremap <silent> <S-Up> <C-w>k
  vnoremap <silent> <S-Right> <C-w>l
]])

-- resize with arrows
vim.cmd([[
  nnoremap <silent> <C-S-Up>    :resize -2<CR>
  nnoremap <silent> <C-S-Down>  :resize +2<CR>
  nnoremap <silent> <C-S-Left>  :vertical resize -2<CR>
  nnoremap <silent> <C-S-Right> :vertical resize +2<CR>
]])

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap = true, silent = true})

-- I hate escape
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', {noremap = true, silent = true})

-- Tab switch buffer
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> (\"\\<C-n>\")')
vim.cmd('inoremap <expr> <c-k> (\"\\<C-p>\")')
-- vim.cmd('inoremap <expr> <TAB> (\"\\<C-n>\")')
-- vim.cmd('inoremap <expr> <S-TAB> (\"\\<C-p>\")')

-- vim.api.nvim_set_keymap('i', '<C-TAB>', 'compe#complete()', {noremap = true, silent = true, expr = true})

-- vim.cmd([[
-- map p <Plug>(miniyank-autoput)
-- map P <Plug>(miniyank-autoPut)
-- map <leader>n <Plug>(miniyank-cycle)
-- map <leader>N <Plug>(miniyank-cycleback)
-- ]])

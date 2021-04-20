local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
end

--- Check if a file or directory exists in this path
local function require_plugin(plugin)
    local plugin_prefix = fn.stdpath("data") .. "/site/pack/packer/opt/"

    local plugin_path = plugin_prefix .. plugin .. "/"
    --	print('test '..plugin_path)
    local ok, err, code = os.rename(plugin_path, plugin_path)
    if not ok then
        if code == 13 then
            -- Permission denied, but it exists
            return true
        end
    end
    --	print(ok, err, code)
    if ok then
        vim.cmd("packadd " .. plugin)
    end
    return ok, err, code
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup(
    function(use)
        -- Packer can manage itself as an optional plugin
        use "wbthomason/packer.nvim"

        -- TODO refactor all of this (for now it works, but yes I know it could be wrapped in a simpler function)
        use {"neovim/nvim-lspconfig", opt = true}
        use {"glepnir/lspsaga.nvim", opt = true}
        use {"kabouzeid/nvim-lspinstall", opt = true}

        -- Atocomplete
        use {"hrsh7th/nvim-compe", opt = true}
        use {"tzachar/compe-tabnine", run = "./install.sh" }

        -- Dbugging
        use {"mfussenegger/nvim-dap", opt = true}

        -- Snippet engine
        use {"hrsh7th/vim-vsnip"}
        use {"hrsh7th/vim-vsnip-integ"}

        -- Teesitter
        use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
        use {"windwp/nvim-ts-autotag", opt = true}

        -- Eplorer
        use "kyazdani42/nvim-tree.lua"

        -- TODO remove when open on dir is supported by nvimtree
        use "kevinhwang91/rnvimr"

        -- Virtual terminal
        use {"voldikss/vim-floaterm"}

        use {'lukas-reineke/indent-blankline.nvim', opt=true, branch = 'lua'}
        use {"lewis6991/gitsigns.nvim", opt = true}
        use {"liuchengxu/vim-which-key", opt = true}
        use {"ChristianChiarulli/dashboard-nvim", opt = true}
        use {"windwp/nvim-autopairs", opt = true}
        use {"terrortylor/nvim-comment", opt = true}
        use {"kevinhwang91/nvim-bqf", opt = true}
        use {"tmux-plugins/vim-tmux-focus-events", opt = true}

        -- Git
		use {"mhinz/vim-signify"}
		use {"tpope/vim-fugitive"}
		use {"junegunn/gv.vim"}

        -- Color
        use {"christianchiarulli/nvcode-color-schemes.vim", opt = true}

        -- Icons
        use {"kyazdani42/nvim-web-devicons", opt = true}

        -- Status Line and Bufferline
        use {"glepnir/galaxyline.nvim", opt = true}
        use {"romgrk/barbar.nvim", opt = true}

        -- Autocomplete method signatures
        use {"ray-x/lsp_signature.nvim", opt = true}

        -- Search
        use {"nvim-lua/popup.nvim", opt = true}
        use {"nvim-lua/plenary.nvim", opt = true}
        use {"nvim-telescope/telescope.nvim", opt = true}

		-- TODO Find lua alternatives (ported from my old vim file)
		use {"KenN7/vim-arsync", opt = true}
		use {"justinmk/vim-sneak", opt = true}
		use {"unblevable/quick-scope", opt = true}
		use {"sumpygump/php-documentor-vim", opt = true}
		use {"junegunn/rainbow_parentheses.vim", opt = true}
		use {"norcalli/nvim-colorizer.lua", opt = true}
		use {"kshenoy/vim-signature", opt = true}
        use {"tpope/vim-surround", opt = true}
        use {"aeke/vim-php-cs-fixer", opt = true}

        require_plugin("vim-php-cs-fixer")
        require_plugin("vim-arsync")
        require_plugin("vim-sneak")
        require_plugin("quick-scope")
        require_plugin("php-documentor-vim")
        require_plugin("rainbow_parentheses.vim")
        require_plugin("nvim-colorizer.lua")
        require_plugin("vim-signature")
        require_plugin("vim-surround")
        require_plugin("vim-tmux-focus-events")
        require_plugin("vim-signify")
        require_plugin("vim-fugitive")
        require_plugin("lsp_signature.nvim")
        require_plugin("gv.vim")
        require_plugin("rnvimr")
        require_plugin("nvim-lspconfig")
        require_plugin("lspsaga.nvim")
        require_plugin("nvim-lspinstall")
        require_plugin("popup.nvim")
        require_plugin("plenary.nvim")
        require_plugin("telescope.nvim")
        require_plugin("nvim-dap")
        require_plugin("nvim-compe")
        require_plugin("compe-tabnine")
        require_plugin("vim-vsnip")
        require_plugin("vim-vsnip-integ")
        require_plugin("nvim-treesitter")
        require_plugin("nvim-ts-autotag")
        require_plugin("nvim-tree.lua")
        require_plugin("gitsigns.nvim")
        require_plugin("vim-which-key")
        require_plugin("dashboard-nvim")
        require_plugin("nvim-autopairs")
        require_plugin("nvim-comment")
        require_plugin("nvim-bqf")
        require_plugin("nvcode-color-schemes.vim")
        require_plugin("nvim-web-devicons")
        require_plugin("galaxyline.nvim")
        require_plugin("barbar.nvim")
        require_plugin("floaterm")
        require_plugin("indent-blankline.nvim")
    end
)

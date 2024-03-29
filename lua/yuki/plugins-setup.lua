local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

local status, packer = pcall(require, "packer")
if not status then
    return
end

return packer.startup(function(use)
    use("wbthomason/packer.nvim")

    use("nvim-lua/plenary.nvim")

    -- use("bluz71/vim-nightfly-guicolors")
    use({ "catppuccin/nvim", as = "catppuccin" })

    -- tmux & split window navigation
    use("christoomey/vim-tmux-navigator")

    -- file explorer
    use("nvim-tree/nvim-tree.lua")

    -- icons
    use("kyazdani42/nvim-web-devicons")

    -- dashboard nvim
    use("glepnir/dashboard-nvim")

    -- lualine
    use("nvim-lualine/lualine.nvim")

    -- bufferline
    use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

    -- fuzzy finding
    -- use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
    use { 'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
    use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

    -- autocompletion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")

    -- snippets
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use("rafamadriz/friendly-snippets")

    -- lsp server
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    -- use({ "glepnir/lspsaga.nvim", branch = "main" })
    -- use("jose-elias-alvarez/typescript.nvim")
    use("onsails/lspkind.nvim")
    use("j-hui/fidget.nvim")

    -- treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end
    })

    -- git signs
    use("lewis6991/gitsigns.nvim")

    -- terminal
    use({ "akinsho/toggleterm.nvim", tag = "*" })

    -- indent guide
    use("lukas-reineke/indent-blankline.nvim")

    -- Comment
    use("numToStr/Comment.nvim")

    -- Project
    use("ahmedkhalf/project.nvim")


    if packer_bootstrap then
        require('packer').sync()
    end
end)

local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

treesitter.setup({
    highlight = {
        enable = true
    },
    indent = { enable = true },
    ensure_installed = {
        "c",
        "cpp",
        "cmake",
        "lua",
        "vim",
        "help",
        "json",
        "yaml",
        "bash",
        "markdown",
    },
    auto_install = true
})

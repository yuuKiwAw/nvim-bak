local status, toggleterm = pcall(require, "toggleterm")
if not status then
    return
end

toggleterm.setup({
    size = 20,
    direction = "float",
    open_mapping = [[<c-t>]],
    close_on_exit = true,
})


-- vimwiki/vimwiki

vim.g.vimwiki_global_ext = 0

vim.keymap.set("n", "<leader>ww", "<nop>", { noremap = true, silent = true })

vim.g.vimwiki_list = {
    {
        path = os.getenv("HOME") .. "/Documents/notes/",
        syntax = "markdown",
        ext = ".md",
    }
}

vim.g.vimwiki_hl_headers = 0

vim.g.vimwiki_key_mappings = {
    all_maps = 1,
    global = 1,
    headers = 1,
    text_objs = 1,
    table_format = 1,
    table_mappings = 1,
    lists = 1,
    links = 1,
    html = 0,
    mouse = 0,
}


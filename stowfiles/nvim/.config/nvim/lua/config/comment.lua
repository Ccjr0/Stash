-- comment.lua

require('Comment').setup {
    -- Custom settings
    padding = true,  -- Adds space after comment character
    sticky = true,   -- Cursor stays in place after commenting
    ignore = '^%s*$', -- Ignore empty lines (regex for lines with only spaces)
    mappings = {
        basic = true,    -- Enable basic mappings (gcc, gbc, etc.)
        extra = true,    -- Enable extra mappings (gco, gcO, gcA)
    },
}

local lspCfg = vim.lsp.config
lspCfg.lua = {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".luarc.json", ".luarc.jsonc" },
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            }
        }
    }
}

vim.cmd[[set completeopt+=menuone,noselect,popup]] -- makes it so the autocomplete doesn't autoinsert
lspCfg.go = {
    cmd = { "gopls" },
    fieltypes = { "go", "gomod", "gowork", "gotmpl" },
    root_markers = { "go.work", "go.mod", ".git" },
    on_attach = function(client, bufnr)
        vim.lsp.completion.enable(true, client.id, bufnr, { autotrigger = true })
    end
}

lspCfg.yaml = {
    filetypes = { "yaml" },
    cmd = { "yaml-language-server", "--stdio" },
}

-- LSP DIAGNOSTIC CONFIGURATIONS --
local sev = vim.diagnostic.severity
vim.diagnostic.config({
    signs = {
        text = {
            [sev.ERROR] = "X",
            [sev.WARN] = "!",
            [sev.HINT] = "+",
            [sev.INFO] = "i",
        },
    },
    update_in_insert = true,
    severtiy_sort = true,
    virtual_lines = false,
    virtual_text = true,
})
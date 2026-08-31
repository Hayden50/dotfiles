local capabilities = vim.lsp.protocol.make_client_capabilities()
local has_cmp_lsp, cmp_lsp = pcall(require, "cmp_nvim_lsp")
if has_cmp_lsp then
    capabilities = cmp_lsp.default_capabilities(capabilities)
end

vim.lsp.config("lua_ls", {
    capabilities = capabilities,
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
})

vim.cmd[[set completeopt+=menuone,noselect,popup]] -- makes it so the autocomplete doesn't autoinsert
vim.lsp.config("gopls", {
    capabilities = capabilities,
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    root_markers = { "go.work", "go.mod", ".git" },
    on_attach = function(client, bufnr)
        vim.lsp.completion.enable(true, client.id, bufnr, { autotrigger = true })
    end
})

vim.lsp.config("yamlls", {
    capabilities = capabilities,
    filetypes = { "yaml" },
    cmd = { "yaml-language-server", "--stdio" },
})

vim.lsp.config("clangd", {
    capabilities = capabilities,
    cmd = { "clangd", "--background-index", "--clang-tidy" },
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
    root_markers = { "compile_commands.json", "compile_flags.txt", ".clangd", ".git" },
})

vim.lsp.enable({ "lua_ls", "gopls", "yamlls", "clangd" })

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
    severity_sort = true,
    virtual_lines = false,
    virtual_text = true,
})

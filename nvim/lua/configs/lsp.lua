local present, lspconfig = pcall(require, "lspconfig")

if not present then
  return
end

require('mason').setup({
    ui = {
        icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = ""
        }
    }
})

require('mason-lspconfig').setup {
  -- ensure_installed = { "sumneko_lua", "omnisharp", "pyright" },
}

lspconfig.sumneko_lua.setup{}
lspconfig.omnisharp.setup{}
lspconfig.pyright.setup{}
lspconfig.bashls.setup{}

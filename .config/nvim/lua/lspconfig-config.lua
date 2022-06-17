require'lspconfig'.bashls.setup{
    capabilities = capabilities, }

require'lspconfig'.sumneko_lua.setup{
 settings = {
    capabilities = capabilities,
    Lua =
    {
      runtime = { version = 'LuaJIT', },
      diagnostics = { globals = {'vim'}, },
      telemetry = { enable = false, },
    },
  },
}


vim.lsp.config('clangd', {
  cmd = { 'clangd', '--background-index', '--clang-tidy', '--header-insertion=iwyu', '-j=12' },
})
vim.lsp.config('lua_ls', {
  settings = { Lua = { diagnostics = { globals = { 'vim' } }, workspace = { checkThirdParty = false } } },
})
-- pyright, yamlls, cmake: nvim-lspconfig's bundled defaults are used as-is.

vim.lsp.enable({ 'clangd', 'pyright', 'lua_ls', 'yamlls', 'cmake' })

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    local opts = { buffer = bufnr, silent = true }

    if client and client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, bufnr, { autotrigger = true })
    end

    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gy', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', 'g[', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', 'g]', vim.diagnostic.goto_next, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<leader>qf', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gv', function() vim.cmd('vsplit'); vim.lsp.buf.definition() end, opts)
    vim.keymap.set('n', 'gt', function() vim.cmd('tabnew'); vim.lsp.buf.definition() end, opts)
  end,
})

vim.api.nvim_create_user_command('Format', function() vim.lsp.buf.format({ async = true }) end, {})
vim.api.nvim_create_user_command('OR', function()
  vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })
end, {})
vim.api.nvim_create_user_command('LspToggle', function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, {})

local lspconfig = require("lspconfig")
local null_ls = require("null-ls")

lspconfig.tsserver.setup({
  on_attach = function(client, bufnr)
    client.server_capabilities.document_formatting = false
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>fm", "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ws", "<cmd>lua vim.lsp.buf.workspace_symbol()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>vd", "<cmd>lua vim.diagnostic.open_float()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "[d", "<cmd>lua vim.diagnostic.goto_next()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "]d", "<cmd>lua vim.diagnostic.goto_prev()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rr", "<cmd>lua vim.lsp.buf.references()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "i", "<C-h>", "<cmd>lua vim.lsp.buf.signature_help()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>fm", "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", {})
  end,
})

lspconfig.dartls.setup({
  on_attach = function(client, bufnr)
    client.server_capabilities.document_formatting = false
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>fm", "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ws", "<cmd>lua vim.lsp.buf.workspace_symbol()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>vd", "<cmd>lua vim.diagnostic.open_float()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "[d", "<cmd>lua vim.diagnostic.goto_next()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "]d", "<cmd>lua vim.diagnostic.goto_prev()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rr", "<cmd>lua vim.lsp.buf.references()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "i", "<C-h>", "<cmd>lua vim.lsp.buf.signature_help()<cr>", {})
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>fm", "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", {})
  end,
  autostart = true
})

null_ls.setup({
  debug = false,
  sources = {
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.black
  }
})

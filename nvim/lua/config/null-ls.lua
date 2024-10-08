local null_ls = require "null-ls"
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.stylua,
    -- null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.completion.spell,
    null_ls.builtins.formatting.goimports,
    -- null_ls.builtins.formatting.yamlfix,
    -- null_ls.builtins.formatting.lua_format,
    null_ls.builtins.formatting.terraform_fmt,
    null_ls.builtins.formatting.prettier.with {
      filetypes = { "yaml" },
    },
    -- brew install shfmt
    null_ls.builtins.formatting.shfmt.with {
      filetypes = { "json", "go", "protobuf" },
    },
  },
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}

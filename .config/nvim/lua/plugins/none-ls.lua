return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- formatters
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.clang_format,



        -- linters
        null_ls.builtins.diagnostics.cpplint,
      },
    })

    vim.keymap.set("n", "<leader>fo", vim.lsp.buf.format, {})
  end,
}

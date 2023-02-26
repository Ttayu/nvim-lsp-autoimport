local augroup = vim.api.nvim_create_augroup("AutoImport", { clear = true })
vim.api.nvim_create_autocmd("User", {
  pattern = "PumCompleteDone",
  group = augroup,
  callback = function()
    local completed = vim.api.nvim_eval("pum#completed_item")
    if completed.user_data == nil or completed.user_data.lspitem == nil then
      return
    end
    local lspitem = vim.json.decode(completed.user_data.lspitem)
    if lspitem.additionalTextEdits ~= nil then
      local bufnr = vim.api.nvim_get_current_buf()
      vim.lsp.util.apply_text_edits(lspitem.additionalTextEdits, bufnr, "utf-8")
    end
  end,
  desc = "Apply additionalTextEdits if exists.",
})

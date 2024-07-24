---@diagnostic disable: undefined-global

-- Disable the concealing in some file formats
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  callback = function()
    vim.wo.conceallevel = 0
  end,
})

-- Disable comment continuation
vim.api.nvim_create_autocmd("FileType", {
  desc = "remove formatoptions",
  callback = function()
    vim.opt.formatoptions:remove({ "r", "o" })
  end,
})

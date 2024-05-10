require("pedro")

vim.api.nvim_create_autocmd("WinLeave", {
  callback = function()
    if vim.bo.ft == "TelescopePrompt" and vim.fn.mode() == "i" then
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "i", false)
    end
  end,
})


vim.opt.listchars:append({ eol = '↵' })
vim.opt.listchars:append({ trail = '·' })
vim.opt.listchars:append({ tab = '>-' })
-- vim.opt.listchars:append({ space = '␣' })
vim.opt.listchars:append({ space = '·' })

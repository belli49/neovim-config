vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
-- paste without overwriting register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "\\y", [["+y]])
vim.keymap.set("n", "\\Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])


vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)


-- custom
vim.keymap.set("n", "<leader>w-", "<C-w>S");
vim.keymap.set("n", "<leader>w/", "<C-w>v");
vim.keymap.set("n", "<leader>wd", "<cmd>q<CR>");
vim.keymap.set("n", "<leader>wj", "<C-w>j");
vim.keymap.set("n", "<leader>wk", "<C-w>k");
vim.keymap.set("n", "<leader>wh", "<C-w>h");
vim.keymap.set("n", "<leader>wl", "<C-w>l");
vim.keymap.set("n", "<leader>wL", "<C-w>x");
vim.keymap.set("n", "<leader>wH", "<C-w>x");


-- nvim tmux
vim.keymap.set("n", "<C-h>", "<cmd>NvimTmuxNavigateLeft<CR>");
vim.keymap.set("n", "<C-j>", "<cmd>NvimTmuxNavigateDown<CR>");
vim.keymap.set("n", "<C-k>", "<cmd>NvimTmuxNavigateUpCR>");
vim.keymap.set("n", "<C-l>", "<cmd>NvimTmuxNavigateRightCR>");

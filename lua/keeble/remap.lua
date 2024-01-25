
-- the leader
vim.g.mapleader = " "

-- window functions
vim.keymap.set("n",  "<leader>h" , function() vim.cmd.wincmd  "h" end)
vim.keymap.set("n",  "<leader>j" , function() vim.cmd.wincmd  "j" end)
vim.keymap.set("n",  "<leader>k" , function() vim.cmd.wincmd  "k" end)
vim.keymap.set("n",  "<leader>l" , function() vim.cmd.wincmd  "l" end)

vim.keymap.set("n",  "<leader>+", function() vim.cmd.vertical.resize "+5" end)
vim.keymap.set("n",  "<leader>-", function() vim.cmd.vertical.resize "-5" end)
-- vim.keymap.set("n",  <leader>rp :resize 100<CR>
-- vim.keymap.set("n",  "<leader>b", function() vim.cmd.ls :ls<CR>:b<Space> end) vim.keymap.set("n",  "Y", "y$")

-- switch between buffers
vim.keymap.set("n", "<leader>]", vim.cmd.bnext)
vim.keymap.set("n", "<leader>[", vim.cmd.bprevious)


-- Moving text around
vim.keymap.set("v",  "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v",  "K", " :m '<-2<CR>gv=gv")
vim.keymap.set("i",  "<C-j>", "<esc>:m .+1<CR>==")
vim.keymap.set("i",  "<C-k>", "<esc>:m .-2<CR>==")


-- increase sizes of <C-e> and <C-y> scrolling
vim.keymap.set("n", "<C-e>", "7<C-e>")
vim.keymap.set("n", "<C-y>", "7<C-y>")


-- keep focus on middle of screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- tab replacement and whitespace removal shortcuts
vim.keymap.set("n",  "<leader>t", ":%s/\t/    /g<CR>")
vim.keymap.set("n",  "<leader>w", ":%s/\\s\\+$//e<CR>")


-- simple copying and pasting twixt vims
vim.keymap.set("v", "<leader>y", ":w! /tmp/vitmp<CR>")
vim.keymap.set("n", "<leader>p", ":r! cat /tmp/vitmp<CR>")


-- -- utilise that to cat selection
-- :silent !touch /tmp/vitmp2
-- vmap <leader>c :! cat /tmp/vitmp2

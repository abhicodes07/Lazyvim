-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local unset = vim.keymap.del
local opts = { noremap = true, silent = true }

-- remove default keymaps
unset("n", ";")

-- exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwords
keymap.set("n", "dw", "vb_d")

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- Tab
-- keymap.set("n", "te", ":tabedit", opts)
-- keymap.set("n", "<leader>tn", ":tabnext<Return>", opts)
-- keymap.set("n", "<leader>tp", ":tabprev<Return>", opts)

-- toggle term
function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
  keymap.set("t", "jk", [[<C-\><C-n>]], opts)
  keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
  keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
  keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
  keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
  keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

-- split window
keymap.set("n", "<leader>sz", ":split<Return>", opts)
keymap.set("n", "<leader>sv", ":vsplit<Return>", opts)
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

--Move window
keymap.set("n", "sh", "<C-w>h", { desc = "move window left" })
keymap.set("n", "sk", "<C-w>k", { desc = "move window up" })
keymap.set("n", "sj", "<C-w>j", { desc = "move window down" })
keymap.set("n", "sl", "<C-w>l", { desc = "move window right" })

-- resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- huefy
keymap.set("n", "<leader>hh", "<cmd>Huefy<CR>", { desc = "Pick color" })
keymap.set("n", "<leader>hs", "<cmd>Shades<CR>", { desc = "Pick Shades" })

-- diagnostics
keymap.set("n", "<C-j>", function()
  ---@diagnostic disable-next-line: deprecated
  vim.diagnostic.goto_next()
end, opts)

-- noice
keymap.set("n", "<leader>snl", function()
  require("noice").cmd("last")
end, { desc = "Noice last message" })

-- material theme
-- keymap.set("n", "<C-m>", function()
--   require("material.functions").find_style()
-- end)

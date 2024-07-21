local map = vim.keymap.set

map("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

map("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

map("n", "<leader>xc", "<cmd>cclose<cr>", { desc = "Close Quickfix List" })

-- Normal mode mappings
map("n", "<C-j>", "<cmd>m +1<CR>", { noremap = true, silent = true, desc = "Move line down" })
map("n", "<C-k>", "<cmd>m -2<CR>", { noremap = true, silent = true, desc = "Move line up" })

-- Insert mode mappings
map("i", "<C-j>", "<Esc><cmd>m +1<CR>gi", { noremap = true, silent = true, desc = "Move line down" })
map("i", "<C-k>", "<Esc><cmd>m -2<CR>gi", { noremap = true, silent = true, desc = "Move line up" })

-- Visual mode mappings
map("x", "<C-j>", "<cmd>m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Move selection down" })
map("x", "<C-k>", "<cmd>m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Move selection up" })

map("i", "<C-a>", "<Home>", { desc = "Move to beginning of line" })
map("i", "<C-e>", "<End>", { desc = "Move to end of line" })

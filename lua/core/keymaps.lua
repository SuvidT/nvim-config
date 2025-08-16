local map = vim.keymap.set
local opts = { noremap = true, silent = true }


-- -------------------------------------
-- File & Quit Commands
-- -------------------------------------
map("n", "<leader>fs", ":w<CR>", opts)         -- [F]ile: [S]ave current file
map("n", "<leader>fq", ":q<CR>", opts)         -- [F]ile: [Q]uit current window
map("n", "<leader>fQ", ":qa!<CR>", opts)       -- [F]ile: [Q]uit all without saving
map("n", "<leader>fw", ":wa<CR>", opts)        -- [F]ile: [W]rite all buffers
map("n", "<leader>fm", ":make<CR>", opts)
map("n", "<leader>fc", ":make clean<CR>", opts)


-- -------------------------------------
-- File Exploration
-- -------------------------------------
map("n", "<leader>ff", ":Ex<CR>", opts)


-- -------------------------------------
-- Window Management
-- -------------------------------------
map("n", "<leader>wv", ":vsplit<CR>", opts)    -- [W]indow: Vertical split
map("n", "<leader>ws", ":split<CR>", opts)     -- [W]indow: Horizontal split
map("n", "<leader>wd", ":close<CR>", opts)     -- [W]indow: Delete/close split
map("n", "<leader>wh", "<C-w>h", opts)         -- [W]indow: Move left
map("n", "<leader>wj", "<C-w>j", opts)         -- [W]indow: Move down
map("n", "<leader>wk", "<C-w>k", opts)         -- [W]indow: Move up
map("n", "<leader>wl", "<C-w>l", opts)         -- [W]indow: Move right
map("n", "<leader>w=", "<C-w>=", opts)         -- [W]indow: Equalize splits


-- -------------------------------------
-- Tabs
-- -------------------------------------
map("n", "<leader>tn", ":tabnew<CR>", opts)    -- [T]ab: [N]ew tab
map("n", "<leader>to", ":tabonly<CR>", opts)   -- [T]ab: Close other tabs
map("n", "<leader>tc", ":tabclose<CR>", opts)  -- [T]ab: Close current tab
map("n", "<leader>tl", ":tabnext<CR>", opts)   -- [T]ab: Next tab
map("n", "<leader>th", ":tabprevious<CR>", opts)-- [T]ab: Previous tab
map("n", "<leader>tt", ":terminal<CR>", opts)


-- -------------------------------------
-- Buffers
-- -------------------------------------
map("n", "<leader>bn", ":bnext<CR>", opts)     -- [B]uffer: [N]ext
map("n", "<leader>bp", ":bprevious<CR>", opts) -- [B]uffer: [P]revious
map("n", "<leader>bd", ":bdelete<CR>", opts)   -- [B]uffer: [D]elete


-- -------------------------------------
-- Resize Splits
-- -------------------------------------
map("n", "<leader>rj", ":resize -2<CR>", opts)         -- [R]esize: shrink height
map("n", "<leader>rk", ":resize +2<CR>", opts)         -- [R]esize: grow height
map("n", "<leader>rh", ":vertical resize -2<CR>", opts)-- [R]esize: shrink width
map("n", "<leader>rl", ":vertical resize +2<CR>", opts)-- [R]esize: grow width


---------------------------------------
-- Line Movement
-- -------------------------------------
map("n", "<leader>mj", ":m .+1<CR>==", opts)    -- [M]ove: current line down
map("n", "<leader>mk", ":m .-2<CR>==", opts)    -- [M]ove: current line up
map("v", "<leader>mj", ":m '>+1<CR>gv=gv", opts)-- [M]ove: selection down
map("v", "<leader>mk", ":m '<-2<CR>gv=gv", opts)-- [M]ove: selection up


-- -------------------------------------
-- Search
-- -------------------------------------
map("n", "<leader>sc", ":nohlsearch<CR>", opts) -- [S]earch: [C]lear highlights


-- -------------------------------------
-- Diagnostics (LSP-related)
-- -------------------------------------
map("n", "<leader>de", vim.diagnostic.open_float, opts) -- [D]iagnostics: show error
map("n", "<leader>dp", vim.diagnostic.goto_prev, opts)  -- [D]iagnostics: previous
map("n", "<leader>dn", vim.diagnostic.goto_next, opts)  -- [D]iagnostics: next


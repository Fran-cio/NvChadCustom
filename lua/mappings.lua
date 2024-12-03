require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n","<leader>q", ":q <CR>",{desc = "Bye bro" })

-- LSP Config Mappings
map("n", "<leader>ll", vim.diagnostic.setloclist, { desc = " Diagnostic setloclist" })

-- Search and Replace Mappings
map("v", "<C-r>", "<CMD>SearchReplaceSingleBufferVisualSelection<CR>", { desc = "Search Replace Single Buffer Visual Selection" })
map("v", "<C-s>", "<CMD>SearchReplaceWithinVisualSelection<CR>", { desc = "Search Replace Within Visual Selection" })
map("v", "<C-b>", "<CMD>SearchReplaceWithinVisualSelectionCWord<CR>", { desc = "Search Replace Within Visual Selection CWord" })

map("n", "<leader>rs", "<CMD>SearchReplaceSingleBufferSelections<CR>", { desc = "Search Replace Single Buffer Selections" })
map("n", "<leader>ro", "<CMD>SearchReplaceSingleBufferOpen<CR>", { desc = "Search Replace Single Buffer Open" })
map("n", "<leader>rw", "<CMD>SearchReplaceSingleBufferCWord<CR>", { desc = "Search Replace Single Buffer CWord" })
map("n", "<leader>rW", "<CMD>SearchReplaceSingleBufferCWORD<CR>", { desc = "Search Replace Single Buffer CWORD" })
map("n", "<leader>re", "<CMD>SearchReplaceSingleBufferCExpr<CR>", { desc = "Search Replace Single Buffer CExpr" })
map("n", "<leader>rf", "<CMD>SearchReplaceSingleBufferCFile<CR>", { desc = "Search Replace Single Buffer CFile" })

map("n", "<leader>rbs", "<CMD>SearchReplaceMultiBufferSelections<CR>", { desc = "Search Replace Multi Buffer Selections" })
map("n", "<leader>rbo", "<CMD>SearchReplaceMultiBufferOpen<CR>", { desc = "Search Replace Multi Buffer Open" })
map("n", "<leader>rbw", "<CMD>SearchReplaceMultiBufferCWord<CR>", { desc = "Search Replace Multi Buffer CWord" })
map("n", "<leader>rbW", "<CMD>SearchReplaceMultiBufferCWORD<CR>", { desc = "Search Replace Multi Buffer CWORD" })
map("n", "<leader>rbe", "<CMD>SearchReplaceMultiBufferCExpr<CR>", { desc = "Search Replace Multi Buffer CExpr" })
map("n", "<leader>rbf", "<CMD>SearchReplaceMultiBufferCFile<CR>", { desc = "Search Replace Multi Buffer CFile" })

-- Haskell Mappings
map("n", "<leader>cl", function() vim.lsp.codelens.run() end, { desc = "Auto Refresh" })
map("n", "<leader>hs", function() require("haskell-tools").hoogle.hoogle_signature() end, { desc = "Hoogle search for the type signature" })
map("n", "<leader>ea", function() require("haskell-tools").lsp.buf_eval_all() end, { desc = "Evaluate all code snippets" })
map("n", "<leader>rr", function() require("haskell-tools").repl.toggle() end, { desc = "Toggle a GHCi repl for the current package" })
map("n", "<leader>rf", function() require("haskell-tools").repl.toggle(vim.api.nvim_buf_get_name(0)) end, { desc = "Toggle a GHCi repl for the current buffer" })
map("n", "<leader>rq", function() require("haskell-tools").repl.quit() end, { desc = "Quit GHCi repl" })

-- LSP General Mappings
map("n", "gD", vim.lsp.buf.declaration, { desc = "LSP declaration" })
map("n", "gd", vim.lsp.buf.definition, { desc = "LSP definition" })
map("n", "K", vim.lsp.buf.hover, { desc = "LSP hover" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "LSP implementation" })
map("n", "<leader>ls", vim.lsp.buf.signature_help, { desc = "LSP signature help" })
map("n", "<leader>D", vim.lsp.buf.type_definition, { desc = "LSP type definition" })
map("n", "<leader>ra", function() require("nvchad.renamer").open() end, { desc = "LSP rename" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP code action" })
map("n", "gr", vim.lsp.buf.references, { desc = "LSP references" })
map("n", "<leader>lf", function() vim.diagnostic.open_float { border = "rounded" } end, { desc = "Floating diagnostic" })
map("n", "[d", function() vim.diagnostic.goto_prev { float = { border = "rounded" } } end, { desc = "Goto prev diagnostic" })
map("n", "]d", function() vim.diagnostic.goto_next { float = { border = "rounded" } } end, { desc = "Goto next diagnostic" })
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Diagnostic setloclist" })
map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, { desc = "Add workspace folder" })
map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, { desc = "Remove workspace folder" })
map("n", "<leader>wl", function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, { desc = "List workspace folders" })

-- Local General Mappings
map("n", "<leader>ff", ":FZF<CR>", { desc = "Find Files" })
map("n", "<leader>q", ":q <CR>", { desc = "Bye bro" })
map("n", "<leader>qq", ":q! <CR>", { desc = "Force Quit" })
map("n", "<leader>w", ":w <CR>", { desc = "Save File" })
map("n", "<leader>;", "$a;<Esc>", { desc = "Append ;" })
map("n", "<leader> >", "10<C-w>>", { desc = "Resize window right" })
map("n", "<leader> <", "10<C-w><", { desc = "Resize window left" })
map("n", "<a-j>", "10<C-e>", { desc = "Scroll down" })
map("n", "<a-k>", "10<C-y>", { desc = "Scroll up" })
map("n", "<leader>ag", ":Ag<CR>", { desc = "Search with Ag" })
map("n", "<leader>rg", ":Rg<CR>", { desc = "Search with RipGrep" })
map("n", "<leader>rG", ":RG<CR>", { desc = "Search with Super RipGrep" })
map("n", "<leader>s", ":HopChar2<CR>", { desc = "Hop search by 2 chars" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

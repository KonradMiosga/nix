-- vim.opt.guicursor = ""
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

vim.opt.clipboard = "unnamedplus"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.api.nvim_create_autocmd("InsertEnter", { command = [[set norelativenumber]] })

vim.api.nvim_create_autocmd("InsertLeave", { command = [[set relativenumber]] })

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

--vim.opt.colorcolumn = "80"

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.cmd(
  [[
  function OpenMarkdownPreview (url)
    execute "silent ! firefox --new-window " . a:url
  endfunction
]]
)
vim.g.mkdp_browserfunc = 'OpenMarkdownPreview'

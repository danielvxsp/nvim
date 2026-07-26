vim.lsp.config('clangd', {
  cmd = { "clangd", "--background-index" },
})

vim.lsp.config('jdtls', {
  cmd = { "jdtls" },
  root_markers = { ".git", "pom.xml", "build.gradle" },
})

local active = false

local function toggle_lsp()
  if not active then
    vim.lsp.enable('clangd')
    vim.lsp.enable('jdtls')
    vim.cmd('LspStart') 
    print("LSPs toggled ON!")
    active = true
  else
    vim.cmd('LspStop') 
    print("LSPs toggled OFF!")
    active = false
  end
end

vim.keymap.set('n', '<leader>a', toggle_lsp, { noremap = true, silent = true })

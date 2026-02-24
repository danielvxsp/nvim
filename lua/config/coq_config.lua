local coq = require('coq')

vim.g.coq_settings = {
  auto_start = false, 
  keymap = {
    recommended = true 
  },
  display = {
    icons = { mode = "short" }, -- minimalist icons for a cleaner UI
  }
}

vim.lsp.config('clangd', {
  cmd = { "clangd", "--background-index" },
  capabilities = coq.lsp_ensure_capabilities(),
})

vim.lsp.config('jdtls', {
  cmd = { "jdtls" },
  root_markers = { ".git", "pom.xml", "build.gradle" },
  capabilities = coq.lsp_ensure_capabilities(),
})

local active = false

local function toggle_coq_lsp()
  if not active then
    vim.cmd('COQnow')
    vim.lsp.enable('clangd')
    vim.lsp.enable('jdtls')
    vim.cmd('LspStart') 
    print("COQ and LSPs toggled ON!")
    active = true
  else
    vim.cmd('LspStop') 
    print("LSPs stopped. COQ toggled OFF!")
    active = false
  end
end

vim.keymap.set('n', '<leader>a', toggle_coq_lsp, { noremap = true, silent = true })

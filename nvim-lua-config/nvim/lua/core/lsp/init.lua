local status_ok, _ = pcall(require, "mason")
if not status_ok then
  return
else
    require("mason").setup({
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    })

end

local status_ok, _ = pcall(require, "mason-lspconfig")
if not status_ok then
  return
else
  require("mason-lspconfig").setup({
  ensure_installed = {"lua_ls", "clangd", "cmake", "pyright"}
  })
end
--require "core.lsp.lsp-installer"

local status_ok, lsp_installer = pcall(require, "mason")  --pcall is a protected call to check if 'mason' is installed
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



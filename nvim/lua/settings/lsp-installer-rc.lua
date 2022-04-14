local lsp_installer = require("nvim-lsp-installer")

local server_opts = {
  ["solargraph"] = function(opts)
    opts.filetypes = {"ruby"}
  end
}

lsp_installer.on_server_ready(
  function(server)
    local opts = {}

    if server_opts[server.name] then
      server_opts[server.name](opts)
    end

    server:setup(opts)
  end
)

local capabilities = vim.lsp.protocol.make_client_capabilities()

local ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not ok then
  return
end

cmp_nvim_lsp.update_capabilities(capabilities)

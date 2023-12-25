local _ = require("lspconfig")

require "sapir.lsp.mason"
require("sapir.lsp.handlers").setup()
require "sapir.lsp.null-ls"

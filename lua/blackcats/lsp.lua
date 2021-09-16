-- lsp config
--
-- To finlalize the configuration and the installation use the following links:
-- * https://github.com/neovim/nvim-lspconfig
-- * https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
-- and the links inside.

local function on_attach()
    -- TODO.... :/
end

-- Lua lsp server variable
local system_name = "Linux"

local sumneko_root_path = '/usr/local/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"
--


require'lspconfig'.bashls.setup{}

require'lspconfig'.ansiblels.setup{}
require'lspconfig'.terraformls.setup{}
require'lspconfig'.jsonls.setup{}

require'lspconfig'.dockerls.setup{}
-- To install and configure: https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#puppet
-- require'lspconfig'.puppet.setup{}

require'lspconfig'.pyright.setup{}
require'lspconfig'.vimls.setup{}
-- To install and configure: https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#perlls
-- require'lspconfig'.perlls.setup{}

-- ruby -> view solargraph

-- lua -> sumneko_lua
require'lspconfig'.sumneko_lua.setup {
    cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" },
    settings = {
        Lua = {
            version = 'LuaJT',
        },
    },
}


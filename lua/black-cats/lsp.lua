--
-- for more infos on howto configure lsp take a look at:
-- - https://github.com/neovim/nvim-lspconfig
-- - https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
--

-- To add:
-- perlls

local function on_attach()
-- todo
end

-- sumneko_lua variable
local system_name = "Linux"
local sumneko_root_path = '/usr/local/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"
--

require'lspconfig'.bashls.setup{}
require'lspconfig'.vimls.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.solargraph.setup{}

require'lspconfig'.sumneko_lua.setup {
    -- on_attach = on_attach,
    cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" };
    settings = {
        Lua = {
            version = 'LuaJIT',
        },
        telemetry = {
            enable = false,
        },
    },
}

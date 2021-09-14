-- lsp config
--

local function on_attach()
    -- TODO.... :/
end

require'lspconfig'.bashls.setup{}
require'lspconfig'.ansiblels.setup{}
require'lspconfig'.terraformls.setup{}
-- to add
-- python
-- ruby
-- docker
-- json
-- perl
-- puppet
-- vimls...?

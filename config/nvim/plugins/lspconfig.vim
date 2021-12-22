Plug 'neovim/nvim-lspconfig'
lua << EOF
require'lspconfig'.pyright.setup{}
EOF

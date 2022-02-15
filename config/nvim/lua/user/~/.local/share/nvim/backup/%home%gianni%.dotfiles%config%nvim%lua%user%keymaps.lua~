local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>" ,opts)
vim.g.mapleader = " "
vim.g.localleader = " "

keymap("n"," <C-h>", "<C-w>h", opts)
keymap("n"," <C-j>", "<C-w>j", opts)
keymap("n"," <C-k>", "<C-w>k", opts)
keymap("n"," <C-l>", "<C-w>l", opts)
keymap("n"," <M-j>", ":resize -2<CR>", opts)
keymap("n"," <M-k>", ":resize +2<CR>", opts)
keymap("n"," <M-h>", ":vertical resize -2<CR>", opts)
keymap("n"," <M-l>", ":vertical resize +2<CR>", opts)

nmap <leader>ve :edit ~/.config/nvim/init.vim<cr>
nmap <leader>vc :edit ~/.config/nvim/coc-settings.json<cr>
nmap <leader>vr :source ~/.config/nvim/init.vim<cr>

nmap <leader>k :nohlsearch<CR>
nmap <leader>Q :bufdo bdelete<cr>

" Allow gf to open non-existent files
map gf :edit <cfile><cr>

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

" Maintain the cursor position when yanking a visual selection
" http://ddrscott.github.io/blog/2016/yank-without-jank/
vnoremap y myy`y
vnoremap Y myY`y

" When text is wrapped, move by terminal rows, not lines, unless a count is provided
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Paste replace visual selection without copying it
vnoremap <leader>p "_dP

" Make Y behave like the other capitals
nnoremap Y y$
nmap <leader>x :!xdg-open %<cr><cr>

" Quicky escape to normal mode
imap ii <esc>

" Easy insertion of a trailing ; or , from insert mode
imap ;; <Esc>A;<Esc>
imap ,, <Esc>A,<Esc>

cmap w!! %!sudo tee > /dev/null %

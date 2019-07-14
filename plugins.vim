
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => let Vundle manage Vundle, required
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'VundleVim/Vundle.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Buffer Explorer / Browser
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-scripts/bufexplorer.zip'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin to manage Most Recently Used (MRU) files 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-scripts/mru.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Distraction-free writing 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'junegunn/goyo.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => A Vim extension that emulates iA Writer environment when editing Markdown, reStructuredText or text files 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'amix/vim-zenroom2'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim plugin for the_silver_searcher, 'ag' 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'rking/ag.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => This plugin is mainly used for locating files, buffers, mrus, ctags, gtags, etc. in large project 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Yggdroot/LeaderF'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => A tree explorer plugin for vim. 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdtree'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => A plugin of NERDTree showing git status
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Xuyuanp/nerdtree-git-plugin'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => True Sublime Text style multiple selections for Vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'terryma/vim-multiple-cursors'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim: quoting/parenthesizing made simple  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-surround'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => A light and configurable statusline/tabline plugin for Vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'itchyny/lightline.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Go development plugin for Vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'fatih/vim-go'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'w0rp/ale'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => commentary.vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-commentary'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>  allows you to visually select increasingly larger regions of text using the same key combination 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'terryma/vim-expand-region'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim plugin that defines a new text object representing lines of code at the same indent level. Useful for python/vim scripts, etc 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'michaeljsmith/vim-indent-object'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => precision color scheme for multiple applications (terminal, vim, etc.) with both dark/light modes 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'NLKNguyen/papercolor-theme'

call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>



""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowBookmarks=1
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-s>'
let g:multi_cursor_select_all_word_key = '<A-s>'
let g:multi_cursor_start_key           = 'g<C-s>'
let g:multi_cursor_select_all_key      = 'g<A-s>'
let g:multi_cursor_next_key            = '<C-s>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NLKNguyen/papercolor-theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
syntax on
set background=dark
colorscheme PaperColor


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\   'javascript': ['jshint'],
\   'python': ['flake8'],
\   'go': ['go', 'golint', 'errcheck']
\}

nmap <silent> <leader>a <Plug>(ale_next_wrap)

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0


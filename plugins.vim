
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
" => A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'airblade/vim-gitgutter'
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
" => ALE indicator for the lightline vim plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'maximbaz/lightline-ale'
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Open file under cursor when pressing gf 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'amix/open_file_under_cursor.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => syntax highlighting and filetype plugins for Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-markdown'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Brings physics-based smooth scrolling to the Vim world!
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'yuttie/comfortable-motion.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Flake8 plugin for Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'nvie/vim-flake8'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim plugin, insert or delete brackets, parens, quotes in pair
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'jiangmiao/auto-pairs'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim plugin for Nginx
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'chr4/nginx.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => A code-completion engine for Vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'ycm-core/YouCompleteMe'

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
map <leader>r :MRU<CR>

""""""""""""""""""""""""""""""
" => LeaderF
""""""""""""""""""""""""""""""
let g:Lf_ShortcutF = '<c-p>'
" find functions
noremap <Leader>ff :LeaderfFunctionAll<cr>
" find buffer
noremap <Leader>fb :LeaderfBuffer<cr>
" find tags
noremap <Leader>ft :LeaderfBufTagAll<cr>
noremap <Leader>fm :LeaderfMruCwd<cr>
" find line has string
noremap <Leader>fl :LeaderfLineAll<cr>

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }


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
" => ale Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\   'javascript': ['jshint'],
\   'python': ['flake8'],
\   'go': ['go', 'golint', 'errcheck']
\}

nmap <silent> <leader>a <Plug>(ale_next_wrap)

" Disabling highlighting
let g:ale_set_highlights = 0

let g:ale_sign_column_always = 0
" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_min_num_of_chars_for_completion=1
let g:ycm_cache_omnifunc=0
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_python_binary_path = 'python3'
let g:ycm_show_diagnostics_ui = 0
" Vim's autocomplete is excruciatingly slow
" http://stackoverflow.com/questions/2169645/vims-autocomplete-is-excruciatingly-slow
set complete-=i


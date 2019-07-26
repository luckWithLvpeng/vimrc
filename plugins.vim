" 复制到系统剪贴板
noremap <Leader>y "*y
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/bundle')
" Make sure you use single quotes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => let Vundle manage Vundle, required
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'VundleVim/Vundle.vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Buffer Explorer / Browser
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'vim-scripts/bufexplorer.zip'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin to manage Most Recently Used (MRU) files 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'vim-scripts/mru.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => A code-completion engine for Vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'ycm-core/YouCompleteMe'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Distraction-free writing 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'junegunn/goyo.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => A Vim extension that emulates iA Writer environment when editing Markdown, reStructuredText or text files 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'amix/vim-zenroom2'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim plugin for the_silver_searcher, 'ag' 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'rking/ag.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => This plugin is mainly used for locating files, buffers, mrus, ctags, gtags, etc. in large project 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'Yggdroot/LeaderF'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'airblade/vim-gitgutter'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => A tree explorer plugin for vim. 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdtree'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => A plugin of NERDTree showing git status
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'Xuyuanp/nerdtree-git-plugin'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => True Sublime Text style multiple selections for Vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'terryma/vim-multiple-cursors'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim: quoting/parenthesizing made simple  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-surround'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => A light and configurable statusline/tabline plugin for Vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'itchyny/lightline.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ALE indicator for the lightline vim plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'maximbaz/lightline-ale'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Go development plugin for Vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'fatih/vim-go'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'w0rp/ale'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => commentary.vim 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-commentary'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>  allows you to visually select increasingly larger regions of text using the same key combination 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'terryma/vim-expand-region'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim plugin that defines a new text object representing lines of code at the same indent level. Useful for python/vim scripts, etc 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'michaeljsmith/vim-indent-object'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => precision color scheme for multiple applications (terminal, vim, etc.) with both dark/light modes 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'NLKNguyen/papercolor-theme'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Open file under cursor when pressing gf 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'amix/open_file_under_cursor.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => syntax highlighting and filetype plugins for Markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-markdown'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Brings physics-based smooth scrolling to the Vim world!
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'yuttie/comfortable-motion.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Flake8 plugin for Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'nvie/vim-flake8'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim plugin, insert or delete brackets, parens, quotes in pair
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'jiangmiao/auto-pairs'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim plugin for Nginx
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'chr4/nginx.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => toggles between hybrid and absolute line numbers automatically
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'jeffkreeftmeijer/vim-numbertoggle'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Intellisense engine for vim8 & neovim, full language server protocol support as VSCode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
 
 
" Initialize plugin system
call plug#end()

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
let g:Lf_ShortcutF = '<c-i>'
" find functions
noremap <Leader>ff :LeaderfFunction<cr>
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
let g:go_fmt_command = 'goimports'
let g:go_def_mode = 'gopls'
let g:go_info_mode= 'gopls'
" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NLKNguyen/papercolor-theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set cursorline
syntax on
set background=dark
colorscheme PaperColor


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ale Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:ale_linters = {
" \   'javascript': ['jshint'],
" \   'python': ['flake8'],
" \   'go': ['go', 'golint', 'errcheck']
" \}

" nmap <silent> <leader>a <Plug>(ale_next_wrap)

" " Disabling highlighting
" let g:ale_set_highlights = 0

" let g:ale_sign_column_always = 0
" " Only run linting when saving the file
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_insert_leave = 0
" let g:ale_lint_on_enter = 0
" let g:ale_lint_on_save = 1



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:ycm_min_num_of_chars_for_completion=1
" let g:ycm_cache_omnifunc=1
" let g:ycm_seed_identifiers_with_syntax=1
" let g:ycm_complete_in_comments = 1
" let g:ycm_complete_in_strings = 1
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_python_binary_path = 'python3'
" let g:ycm_show_diagnostics_ui = 0
" let g:ycm_global_ycm_extra_conf = '$HOME/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

" Vim's autocomplete is excruciatingly slow
" http://stackoverflow.com/questions/2169645/vims-autocomplete-is-excruciatingly-slow
"set complete-=i

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => jeffkreeftmeijer/vim-numbertoggle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number relativenumber


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => neoclide/coc.nvim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" if hidden is not set, TextEdit might fail.
set hidden
" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> <c-]> <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

















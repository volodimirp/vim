"__         __  ________  __         __   __
"\ \       / / |  ____  | \ \       / /  /  \
" \ \     / /  | |    | |  \ \     / /  /  _ \
"  \ \   / /   | |    | |   \ \   / /  /  /_\ \
"   \ \_/ /    | |____| |    \ \_/ /  /  ____  \
"    \___/     |________|     \___/  /__/    \__\
"            _                              __ _
"           (_)                            / _(_)
"     __   ___ _ __ ___     ___ ___  _ __ | |_ _  __ _
"     \ \ / / | '_ ` _ \   / __/ _ \| '_ \|  _| |/ _` |
"      \ V /| | | | | | | | (_| (_) | | | | | | | (_| |
"       \_/ |_|_| |_| |_|  \___\___/|_| |_|_| |_|\__, |
"                                                 __/ |
"                                                |___/
"
" let Vundle manage Vundle
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
" required!
  Bundle 'gmarik/vundle'

" My Bundles here:
  Bundle 'AutoClose'
  Bundle "bufexplorer.zip"
  Bundle 'FuzzyFinder'
  Bundle 'kien/ctrlp.vim'
  Bundle 'scrooloose/nerdtree'
  Bundle 'Syntastic'
  Bundle 'tpope/vim-rails'
  Bundle 'vim-scripts/L9.git'
  Bundle 'vim-scripts/ragtag.vim'
  Bundle 'vim-scripts/matchit.zip'

" VIM Ui {
  color desert                      " Vim Color
  set t_Co=256                      " Fix colors in the terminal
  set shortmess+=I                  " Disable splash text
  set number                        " Enable line number
  set expandtab ts=2 sw=2 ai
  set showtabline=2                 " Always shows tabs on top
  set backspace=indent,eol,start    " Intuitive backspacing.
  set incsearch                     " Highlight matches as you type.
  set hlsearch                      " Highlight matches.
  set scrolloff=3                   " Show 3 lines of context around the cursor.
  set visualbell                    " No beeping.
  set nobackup                      " Don't make a backup before overwriting a file.
  set nowritebackup                 " And again.
  set noswapfile                    " Disable swp files
  set shortmess=filmnrxtTI          " Disble intro message
  set nohidden                      " Remove the buffer after tab close
  set novisualbell
  set mouse=a                       " automatically enable mouse usage
  set list                          " use the listchars settings
  set listchars=trail:•             " show space
  set ignorecase                    " case insensitive search
  set nocompatible                  " Use ViMproved, don't emulate old vi
  set shellslash
  filetype indent on                " Turn on file type detection.
  filetype plugin on                " Automatically detect file types.
  syntax on                         " syntax highlighting

  autocmd BufWritePre *.* :%s/\s\+$//e

  " Easier copy/paste {
    :map <C-v> "+gP
    :map <C-c> "+y
  " }

  " Save {
    :map <C-s> :w<cr>
    :imap <C-s> <ESC>:w<cr>
  " }

  " Select all text {
    :map <C-a> <esc>ggVG<end>
  " }

  " Clearing highlighted search {
    nnoremap <esc> :noh<return><esc>
  " }

  nnoremap <silent> <C-b> :BufExplorer<CR>
  autocmd BufNewFile,BufRead *.html.erb set ft=eruby.html
  au Bufread,BufNewFile *.feature set filetype=gherkin
  au! Syntax gherkin source ~/.vim/cucumber.vim
" }

" Tabs {
  :map tt :tabnew<cr>
  :map <S-tab> :tabprevious<cr>
  :map <C-tab> :tabnext<cr>
  :map tc :tabclose<cr>
  :map <C-q> <ESC>:q!<cr>
  :imap <S-tab> <ESC>:tabprevious<cr>i
  :imap <C-tab> <ESC>:tabnext<cr>i
" }

" move up and down lines with A-down and A-up (also works in visual mode) {
  :nnoremap <A-down> :m+<CR>==
  :nnoremap <A-up> :m-2<CR>==
  :inoremap <A-down> <Esc>:m+<CR>==gi
  :inoremap <A-up> <Esc>:m-2<CR>==gi
  :vnoremap <A-down> :m'>+<CR>gv=gv
  :vnoremap <A-up> :m-2<CR>gv=gv
" }

" Sort css style {
  :nmap <F3> :g#\({\n\)\@<=#.,/}/sort<CR>
" }

" Rgrep {
  :map <C-f> :Rgrep<cr>
  :let Grep_Default_Filelist = '*.*'
  :let Grep_Skip_Files = '*.log all.css all.js'
  set nocompatible
" }

" Snippets {
  nnoremap ,smr <esc>:exec ReloadAllSnippets()<cr>
" }

" reload .vimrc settings {
  autocmd! bufwritepost .vimrc source %
  :set autoread                     " autorealod changed files
" }

" Syntastic {
  let g:syntastic_enable_signs=1
  let g:syntastic_quiet_warnings=1
  let g:syntastic_error_symbol='✗'
  let g:syntastic_warning_symbol='⚠'
" }

" Rails {
  :map gv :Rview<cr>
  :map gc :Rcontroller<cr>
  :map gm :Rmodel<cr>
  :map gh :Rhelper<cr>
" }

" Nerdtree plugin {
  :map <F2> :NERDTreeToggle<cr>
  :map <leader>e :NERDTreeFind<CR>
  " Don't show pyc files {
    :let NERDTreeIgnore=['\.pys$']
  " }
  :let NERDTreeShowBookmarks=1
  :let NERDTreeChDirMode=0
  :let NERDTreeQuitOnOpen=1
  :let NERDTreeShowHidden=1
  :let NERDTreeKeepTreeInNewTab=1
" }

" temp shorcuts {
  :map <F4> :!touch tmp/restart.txt<cr><cr>
" }

" FuzzyFinder {
  :map <A-S-o> :FufCoverageFile<cr>
  let g:fuf_file_exclude = '*.png;*.jpeg;*.jpg;*.gif;*.log;public/**/*;log/**/*;coverage/**/*;tmp/**/*;.git/**/*;.sass-cache/**/*;'
" }

" CtrlP plugin {
  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_working_path_mode = 'rc'
  let g:ctrlp_user_command = 'find %s -type f'
  let g:ctrlp_match_window_bottom = 0
  let g:ctrlp_extensions = ['sample']
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " ignore
    " style Ctrlp {
      hi CtrlPMode1 guifg=blue guibg=green
      hi CtrlPMode2 guifg=red guibg=yellow
    " }
" }

" to start vim maximized {
  function! Maximize_Window()
    silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
  endfunction!

  au GUIEnter * call Maximize_Window()
" }

function! NERDTreeInitAsNeeded()
    redir => bufoutput
    buffers!
    redir END
    let idx = stridx(bufoutput, "NERD_tree")
    if idx > -1
        NERDTreeMirror
        NERDTreeFind
        wincmd l
    endif
endfunction

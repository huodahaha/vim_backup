set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'git@github.com:terryma/vim-multiple-cursors.git'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'dyng/ctrlsf.vim'
Plugin 'git@github.com:ctrlpvim/ctrlp.vim.git'
Plugin 'git@github.com:easymotion/vim-easymotion.git'
Plugin 'rdnetto/YCM-Generator'


call vundle#end()

filetype on
filetype plugin on

" make config effect right away
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" color theme
colorscheme solarized
set background=light

set laststatus=2
set ruler
set number
set cursorline
set cursorcolumn
set hlsearch

" nerd comment
let g:NERDSpaceDelim = 1
map <C-l> <plug>NERDCommenterToggle

" nerdtree
let g:nerdtree_tabs_open_on_console_startup=1
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '<'

set pastetoggle=<F10>

" syntax
syntax enable
syntax on
let g:cpp_class_scope_highlight = 1

" indent related
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

"fold
set foldmethod=indent
set foldmethod=syntax
set nofoldenable

" cpp/h switch
nmap <silent> <F3> :FSHere<cr>

"YCM
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>ji :YcmCompleter GoToImplementation
let g:ycm_key_list_select_completion = ['<UP>', '<Down>']
let g:ycm_confirm_extra_conf=1
let g:ycm_goto_buffer_command = 'vertical-split'
let g:syntastic_error_symbol='W>'
let g:syntastic_warning_symbol='E>'
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1

" indent
vmap <Tab> >
vmap <S-Tab> <

" ctrlsf
let g:ctrlsf_position = 'right'
let g:ctrlsf_regex_pattern = 1
let g:ctrlsf_case_sensitive = 'yes'
let g:ctrlsf_default_root = 'project'
let g:ctrlsf_auto_close = 0
let g:ctrlsf_winsize = '30%'
nmap <Leader><Leader> :CtrlSF<CR>
nmap <Leader>f :CtrlSF<CR>
nmap <C-f> <Plug>CtrlSFPrompt

" mouse
set mouse=a

" 关闭搜索
nmap <F4> :nohl<CR>

" 回到bash
map <F5> <C-z>

" easymotion
map <Leader>w <Plug>(easymotion-w)
map <Leader>b <Plug>(easymotion-b)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" windows之间快速移动
"noremap <C-h> <C-w>h
"noremap <C-j> <C-w>j
"noremap <C-k> <C-w>k
"noremap <C-l> <C-w>l

" java 自动补全
"autocmd FileType java setlocal omnifunc=javacomplete#Complete

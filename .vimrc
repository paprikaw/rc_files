
"Vim-Plug"
"自动寻找vimplugin有没有安装"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'Yggdroot/LeaderF', { 'do': '.\install.bat' }
Plug 'ludovicchabant/vim-gutentags'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Vim extension
Plug 'zhou13/vim-easyescape'
Plug 'wincent/terminus'

" Mips support
Plug 'harenome/vim-mipssyntax'
" C support
Plug 'dense-analysis/ale'
Plug 'Valloric/YouCompleteMe'

" compile at the same time
Plug 'skywind3000/asyncrun.vim'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git plugin
Plug 'tpope/vim-fugitive'

" Markdown surpport
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
call plug#end()

""" Compile files

" 自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 6

" 任务结束时候响铃提醒
let g:asyncrun_bell = 1

""" How vim looks like 

" 设置高亮"
set hlsearch

" no clear screen when exit vim"
" set t_ti= t_te=

" Set line number to relative 
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

let g:airline_theme='luna'

let g:airline_powerline_fonts = 1
let g:airline_section_b = '%{FugitiveStatusline()}'


""" Setting tags 

set tags=./.tags;,.tags

let g:gutentags_add_default_project_roots = 0

" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags


"if isdirectory("kernel/") && isdirectory("mm/")
"    let g:gutentags_file_list_command = 'find arch/arm* arch/riscv block crypto drivers fs include init ipc kernel lib mm net security sound virt'
"endif

" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif


""" C support

" Ale configuration
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''
let g:ale_sign_error = "\ue009\ue009"
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad gui=undercurl guisp=red
hi! SpellCap gui=undercurl guisp=blue
hi! SpellRare gui=undercurl guisp=magenta


""" Alias and key setting 

let g:easyescape_chars = { "j": 1, "k": 1 }
let g:easyescape_timeout = 100

" move cursor in insert mode
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>

cnoremap jk <ESC>
cnoremap kj <ESC>


filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set term=xterm
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
colorscheme Monokai
set tabstop=3
set shiftwidth=3
let g:syntastic_cpp_compiler_options="-std=c++11"
let g:syntastic_cpp_check_header = 1
let g:syntastic_python_checkers = ['flake8']
au Filetype python source ~/python.vim

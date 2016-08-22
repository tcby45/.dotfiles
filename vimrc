" execute pathogen#infect('~/.dotfiles/pathogen/{}')
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Stuff from tpope
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'

" Syntastic
Plugin 'scrooloose/syntastic'

" Lucario
Plugin 'raphamorim/lucario'

" For Pony
Plugin 'dleonard0/pony-vim-syntax'

" Others
Plugin 'rust-lang/rust.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 1

" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_python_checkers = ['flake8']
" let g:syntastic_sh_checkers = ['shellcheck']
" let g:syntastic_ruby_checkers = ['rubocop']
" let g:syntastic_yaml_checkers = ['yamllint']

" let g:syntastic_error_symbol = '❌'
" let g:syntastic_style_error_symbol = '⁉️'
" let g:syntastic_warning_symbol = '⚠️'
" let g:syntastic_style_warning_symbol = '💩'

" highlight link SyntasticErrorSign SignColumn
" highlight link SyntasticWarningSign SignColumn
" highlight link SyntasticStyleErrorSign SignColumn
" highlight link SyntasticStyleWarningSign SignColumn

syntax enable
set number
colorscheme lucario

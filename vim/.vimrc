set number
set showcmd
syntax on
set tabstop=4
set noexpandtab
set incsearch
set encoding=utf8
colo desert

set laststatus=2
set noshowmode
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

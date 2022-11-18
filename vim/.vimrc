set number
set showcmd
syntax on
set tabstop=4
set noexpandtab
set incsearch
set nohlsearch
set shiftwidth=4
colo desert
hi Normal guibg=NONE ctermbg=NONE
hi EndofBuffer guibg=NONE ctermbg=NONE

set laststatus=2
set noshowmode
if !has('nvim')
	python3 from powerline.vim import setup as powerline_setup
	python3 powerline_setup()
	python3 del powerline_setup
endif

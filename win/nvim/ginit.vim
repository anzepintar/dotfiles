:set number

:set autoindent expandtab tabstop=2 shiftwidth=2

" packer
lua require('plugins')

" auto plugin reload
augroup packer_user-config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | Packercompile
augroup end

cd ~\Documents\Docs\

" Enable Mouse
set mouse=a
source $VIMRUNTIME/mswin.vim

" color theme installed via packer.nvim
colorscheme dracula

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

" Enable GUI ScrollBar
if exists(':GuiScrollBar')
    GuiScrollBar 1
endif

" Right Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv

:set number
:set autoindent expandtab tabstop=2 shiftwidth=2

" packer
lua require('plugins')

" auto plugin reload
augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end

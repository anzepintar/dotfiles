packer = require 'packer'
packer.init {

}
-- enables usage of "use" instead of "packer.use"
local use = packer.use
packer.reset()

packer.startup(function()

  use {
    'wbthomason/packer.nvim',
    opt = false
  }
  use {
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end, 
  }  
  use {
    'Mofiqul/dracula.nvim'
  }
end)

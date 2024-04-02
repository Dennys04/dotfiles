local plug = vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')


-- IDE Plugins
plug  ('easymotion/vim-easymotion')
plug  ('jiangmiao/auto-pairs')
plug  ('scrooloose/nerdtree')
plug  ('christoomey/vim-tmux-navigator')

plug ('neoclide/coc.nvim', {branch = 'release'})

plug  ('ryanoasis/vim-devicons')
plug  ('kyazdani42/nvim-web-devicons')
plug  ('nvim-lua/popup.nvim')
plug  ('nvim-lua/plenary.nvim')
plug  ('nvim-telescope/telescope.nvim')

--LSP
plug  ('neovim/nvim-lspconfig')
plug ('nvim-lua/completion-nvim')


vim.call('plug#end')

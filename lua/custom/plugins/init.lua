-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  { 'wakatime/vim-wakatime', lazy = false },
  { 'datsfilipe/vesper.nvim', lazy = false },
  { 'rose-pine/neovim', name = 'rose-pine', lazy = false },
  {
    'brenoprata10/nvim-highlight-colors',
    config = function()
      require('nvim-highlight-colors').turnOn()
    end,
    init = function()
      vim.opt.termguicolors = true
    end,
  },
  { 'numToStr/Comment.nvim' },
}

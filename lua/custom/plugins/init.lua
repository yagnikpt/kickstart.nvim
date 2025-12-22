-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  { 'wakatime/vim-wakatime', lazy = false },
  {
    'datsfilipe/vesper.nvim',
    lazy = false,
    config = function()
      require('vesper').setup {
        transparent = true,
        italics = {
          comments = false,
          keywords = false,
          functions = false,
          strings = false,
          variables = false,
        },
      }
    end,
  },
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      require('gruvbox').setup {
        contrast = 'hard',
      }
      vim.cmd.colorscheme 'gruvbox'
      vim.api.nvim_set_hl(0, 'FloatBorder', { link = 'Normal' })
    end,
  },
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
  {
    'f-person/auto-dark-mode.nvim',
    opts = {
      set_dark_mode = function()
        vim.api.nvim_set_option_value('background', 'dark', {})
      end,
      set_light_mode = function()
        vim.api.nvim_set_option_value('background', 'light', {})
      end,
      update_interval = 3000,
      fallback = 'dark',
    },
  },
}

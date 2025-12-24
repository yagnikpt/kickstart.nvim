-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  { 'wakatime/vim-wakatime', lazy = false },
  -- {
  --   'datsfilipe/vesper.nvim',
  --   -- lazy = false,
  --   config = function()
  --     require('vesper').setup {
  --       transparent = true,
  --       italics = {
  --         comments = false,
  --         keywords = false,
  --         functions = false,
  --         strings = false,
  --         variables = false,
  --       },
  --     }
  --   end,
  -- },
  -- {
  --   'rebelot/kanagawa.nvim',
  --   priority = 1000,
  --   config = function()
  --     require('kanagawa').setup {
  --       transparent = true,
  --       keywordStyle = { italic = false },
  --       commentStyle = { italic = false },
  --       background = {
  --         light = 'lotus',
  --         dark = 'dragon',
  --       },
  --       overrides = function()
  --         return {
  --           SignColumn = { bg = 'NONE' },
  --           LineNr = { bg = 'NONE' },
  --         }
  --       end,
  --     }
  --     -- vim.cmd.colorscheme 'kanagawa'
  --   end,
  -- },
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_enable_italic = false
      vim.g.gruvbox_material_background = 'hard'
      vim.g.gruvbox_material_disable_italic_comment = '1'
      vim.g.gruvbox_material_ui_contrast = 'high'
      vim.cmd.colorscheme 'gruvbox-material'
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

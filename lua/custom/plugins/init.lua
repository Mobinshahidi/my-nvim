-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'tris203/precognition.nvim', config = true },
  { 'echasnovski/mini.nvim', version = false },
  { 'sphamba/smear-cursor.nvim', opts = {} },
  { 'nvzone/typr', dependencies = 'nvzone/volt', opts = {}, cmd = { 'Typr', 'TyprStats' } },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function()
      require('nvim-autopairs').setup {
        check_ts = true,
        disable_filetype = { 'TelescopePrompt', 'spectre_panel' },
      }
    end,
  },
}

return {
  "nvim-java/nvim-java",
  config = false,
  dependencies = {
    {
      "neovim/nvim-lspconfig",
      opts = {
        servers = {
          jdtls = {


   -- local config = {
    cmd = {'~/.local/share/nvim/mason/packages/jdtls/bin/jdtls'},

    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'},
    { upward = true })[1]),
    --        }


            -- your jdtls configuration goes here
          },
        },
        setup = {
          jdtls = function()
            require("java").setup({
              -- your nvim-java configuration goes here
            })
          end,
        },
      },
    },
  },
}

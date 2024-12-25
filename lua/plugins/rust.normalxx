return{
require'lspconfig'.rust_analyzer.setup({
    on_attach = function(client, bufnr)
        -- Add your on_attach functionality here
        vim.lsp.set_log_level("debug")
    end,
    settings = {
        ["rust-analyzer"] = {
            diagnostics = {
                enable = true,
            },
            cargo = {
                allFeatures = true, -- Enable all features for cargo
            },
            procMacro = {
                enable = true, -- Enable procedural macro support
            },
        },
    },
})


}--        {'rust-lang/rust.vim' },
--    {
--        'mrcjkb/rustaceanvim',
        --version = '^3',
    --    ft = { 'rust' },

   -- }

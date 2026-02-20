  return {
        {
                "mason-org/mason.nvim",
                opts = {}
        },
        {
                "mason-org/mason-lspconfig.nvim",
                opts = {
                        ensure_installed = {"pyright"},
                },
                dependencies = {
                        { "mason-org/mason.nvim", opts = {} },
                        "neovim/nvim-lspconfig",
                },
        },
        {
                "neovim/nvim-lspconfig",
                ft = "python",  -- Only load when opening Python files
                config = function()
                        -- Disable file watching capability to prevent performance issues
                        local capabilities = vim.lsp.protocol.make_client_capabilities()
                        capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = false

                        vim.lsp.config("pyright", {
                                capabilities = capabilities,
                                settings = {
                                        python = {
                                                analysis = {
                                                        autoSearchPaths = true,
                                                        diagnosticMode = "openFilesOnly",  -- Don't analyze entire workspace
                                                        useLibraryCodeForTypes = true,
                                                }
                                        }
                                }
                        })

                        vim.api.nvim_create_autocmd("LspAttach", {
                                callback = function(args)
                                        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
                                                buffer = args.buf
                                        })
                                end,
                        })
                end,
        },
  }

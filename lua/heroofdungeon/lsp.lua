local config = {}

config.servers = { -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
  -- Multiple
  "ast_grep",      -- Popular (C, C++, Rust, Go, Java, Python, C#, JavaScript, JSX, TypeScript, HTML, CSS, Kotlin, Dart and Lua)
  "biome",         -- Web (JavaScript, TypeScript, JSX, TSX, JSON, HTML, CSS and GraphQL)

  -- LSPs
  "asm_lsp",                -- Assembly
  "bashls",                 -- Bash and simiar shells
  "fish_lsp",               -- Fish shell
  "clangd",                 -- C and C++
  "cmake",                  -- cmake
  "cssls",                  -- CSS and its variants
  "docker_language_server", -- Dockerfile and docker-compose
  "jdtls",                  -- Java
  "jsonls",                 -- JSON
  "yamlls",                 -- YAML
  "lua_ls",                 -- Lua
  "rust_analyzer",          -- Rust
  "ts_ls",                  -- JavaScript and TypeScript
  "html",                   -- HTML
  "csharp_ls",              -- C#
  "rnix",                   -- Nix

  -- Spelling Checkers (LSP)
  -- "codebook",
}

config.packages = { -- https://mason-registry.dev/registry/list
  -- Special
  "cbfmt",          -- Formats code blocks in Markdown

  -- Formatters
  "prettier",     -- Angular, CSS, Flow, GraphQL, HTML, JSON, JSX, JavaScript, LESS, Markdown, SCSS, TypeScript, Vue, YAML
  "asmfmt",       -- Assembly
  "beautysh",     -- Bash and similar shells
  "clang-format", -- C, C#, C++, JSON, Java, JavaScript
  "stylua",       -- Lua
  "taplo",        -- TOML
  -- "rustfmt",      -- Rust

  -- Linters
  "eslint_d", -- Fast linter for JavaScript and TypeScript
  "pylint",   -- Python
  "ty",       -- Python types
}

config.setup = function()
  local diagnostics_active = false;

  vim.diagnostic.config({
    virtual_text = diagnostics_active,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    signs = {
      text = {
        [vim.diagnostic.severity.ERROR] = "! ",
        [vim.diagnostic.severity.WARN]  = "? ",
        [vim.diagnostic.severity.HINT]  = "H ",
        [vim.diagnostic.severity.INFO]  = "I ",
      },
    },
  });

  vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function()
      vim.keymap.set("n", "gO", ":Telescope lsp_document_symbols<cr>", { desc = "List document symbols" })
      vim.keymap.set("n", "gR", ":Telescope lsp_references<cr>", { desc = "List references" });
      vim.keymap.set("n", "gI", ":Telescope lsp_implementations<cr>", { desc = "Go to implementation" });
      vim.keymap.set("n", "gd", ":Telescope diagnostics<cr>", { desc = "Show diagnostics" });
      vim.keymap.set("n", "gD", vim.lsp.buf.definition, { desc = "Go to definition" });
      -- keymap.set("n", "gt", ":Telescope lsp_type_definitions<cr>");
      vim.keymap.set("n", "<leader>rf", function()
        vim.lsp.buf.format({
          tabSize = 2,
          insertSpaces = true,
          insertFinalNewline = true,
          trimFinalNewlines = true,
        })
      end, { desc = "Format buffer" });
      vim.keymap.set({ "n", "v" }, "<leader>ra", function()
        vim.lsp.buf.code_action();
      end, { desc = "Code action" });
      -- keymap.set("n", "<leader>rT", function ()
      --   vim.lsp.buf.typehierarchy("subtypes");
      -- end, { desc = "Show typehierarchy" });
      vim.keymap.set("n", "<leader>rt", vim.lsp.buf.hover, { desc = "Show type" });
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol below cursor" });
      vim.keymap.set("n", "<leader>rs", ":lsp restart<cr>", { desc = "Restart LSP" })
      vim.keymap.set("n", "<leader>rd", function()
        diagnostics_active = not diagnostics_active;
        vim.diagnostic.config({
          virtual_text = diagnostics_active,
        });
      end, { desc = "Toggle diagnostic messages" })
      vim.keymap.set("n", "X", function()
        vim.diagnostic.open_float({
          -- border = "single"
        })
      end);
      vim.keymap.set("n", "K", function()
        vim.lsp.buf.hover({
          -- border = "custom"
        });
      end);
    end,
  });

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)
  local default_capabilities = require("lsp-file-operations").default_capabilities()
  capabilities = vim.tbl_deep_extend("force", capabilities, default_capabilities)

  vim.lsp.config("*", {
    capabilities = capabilities,
  })

  vim.lsp.enable(config.servers);
end

return config

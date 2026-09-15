return {
	{
    "MeanderingProgrammer/render-markdown.nvim",

    config = function ()
      require("render-markdown").setup({
        render_modes = { 'n', 'c', 'i' },
        completions = {
          lsp = {
            enabled = true
          }
        },
        sign = {
          enabled = false
        },
        code = {
          style = "full"
        }
      })
    end
  },
	-- {
	-- 	"StefanBartl/markdown.nvim",
	-- 	dependencies = { "StefanBartl/lib.nvim" },
	-- 	ft = { "markdown", "mdx", "md" },
	--    features = {
	--      disable = {
	--        "preview", "mdview", "create", "scope",
	--        "fold", "tableview"
	--      }
	--    },
	-- 	config = function()
	-- 		require("markdown").setup()
	-- 	end,
	-- },
  -- {
  -- "StefanBartl/pdfport.nvim",
  --   dependencies = { "StefanBartl/lib.nvim" },
  --   cmd = { "PdfPort" },
  --   opts = {
  --     default_backend = "pdftotext",
  --   },
  --   config = function ()
  --     -- Oil
  --     require("pdfport.integrations.oil").setup()
  --
  --     -- Telescope
  --     local pdfport_tel = require("pdfport.integrations.telescope")
  --
  --     require("telescope.builtin").find_files({
  --       previewer = pdfport_tel.previewer({ max_pages = 3 }),
  --     })
  --   end
  -- }
}

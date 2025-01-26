return {
	"lukas-reineke/indent-blankline.nvim",
	config = function()
    -- local highlight = {
    --   "RainbowRed",
    --   "RainbowYellow",
    --   "RainbowBlue",
    --   "RainbowOrange",
    --   "RainbowGreen",
    --   "RainbowViolet",
    --   "RainbowCyan",
    -- }
    -- local hooks = require("ibl.hooks")

    --   vim.api.nvim_set_hl(0, "RainbowRed", { fg = scopehi })
    --   vim.api.nvim_set_hl(0, "RainbowYellow", { fg = scopehi })
    --   vim.api.nvim_set_hl(0, "RainbowBlue", { fg = scopehi })
    --   vim.api.nvim_set_hl(0, "RainbowOrange", { fg = scopehi })
    --   vim.api.nvim_set_hl(0, "RainbowGreen", { fg = scopehi })
    --   vim.api.nvim_set_hl(0, "RainbowViolet", { fg = scopehi })
    --   vim.api.nvim_set_hl(0, "RainbowCyan", { fg = scopehi })
    -- end)
    --
		require("ibl").setup({
			scope = {
				show_start = false,
				show_end = true,
			},
		})
	end,
}

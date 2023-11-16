return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		-- Add File to the Harpoon List
		keymap.set(
			"n",
			"<leader>a",
			"<cmd>lua require('harpoon.mark').add_file()<cr>",
			{ desc = "Mark file with harpoon" }
		)
		keymap.set(
			"n",
			"<leader>hn",
			"<cmd>lua require('harpoon.ui').nav_next()<cr>",
			{ desc = "Go to next harpoon mark" }
		)
		keymap.set(
			"n",
			"<leader>hp",
			"<cmd>lua require('harpoon.ui').nav_prev()<cr>",
			{ desc = "Go to previous harpoon mark" }
		)
		-- View Harpoon list of marked files
		keymap.set(
			"n",
			"<C-e>",
			"<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
			{ desc = "View harpoon list of marked files" }
		)

		-- Quick Navigation keys
		keymap.set(
			"n",
			"<C-f>",
			"<cmd>lua require('harpoon.ui').nav_file(1)<cr>",
			{ desc = "Navigate to the first file" }
		)
		keymap.set(
			"n",
			"<C-s>",
			"<cmd>lua require('harpoon.ui').nav_file(2)<cr>",
			{ desc = "Navigate to the Second file" }
		)
		keymap.set(
			"n",
			"<C-t>",
			"<cmd>lua require('harpoon.ui').nav_file(3)<cr>",
			{ desc = "Navigate to the Third file" }
		)
		keymap.set(
			"n",
			"<C-n>",
			"<cmd>lua require('harpoon.ui').nav_file(4)<cr>",
			{ desc = "Navigate to the Fourth file" }
		)
	end,
}

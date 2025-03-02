return {
	"olexsmir/gopher.nvim",
	ft = "go",
	config = function(_, opts)
		require("gopher").setup(opts)
		vim.keymap.set("n", "<Leader>gsj", "<cmd> GoTagAdd json <CR>", { desc = "Add json struct for golang" })
		vim.keymap.set("n", "<Leader>gsy", "<cmd> GoTagAdd json <CR>", { desc = "Yaml struct tags" })
	end,
	build = function()
		vim.cmd([[silent! GoInstallDeps]])
	end,
}

return {
	"catgoose/nvim-colorizer.lua",
	event = "BufReadPre",
	opts = { -- set to setup table
		user_default_options = {
			css = true,
			tailwind = true,
		},
	},
}

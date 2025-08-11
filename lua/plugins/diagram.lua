-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

--@type LazySpec
return {
	"3rd/diagram.nvim",
	dependencies = {
		"3rd/image.nvim",
	},
	opts = {
		renderer_options = {
			mermaid = {
				background = "transparent", -- nil | "transparent" | "white" | "#hex"
				theme = "neutral", -- nil | "default" | "dark" | "forest" | "neutral"
				scale = 4, -- nil | 1 (default) | 2  | 3 | ...
				width = 800, -- nil | 800 | 400 | ...
				height = 600, -- nil | 600 | 300 | ...
			},
			plantuml = {
				charset = "utf-8",
			},
			d2 = {
				theme_id = 1,
			},
			gnuplot = {
				theme = "dark",
				size = "800,600",
			},
		},
	},
}

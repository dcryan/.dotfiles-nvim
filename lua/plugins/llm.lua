return {
	{
		"huggingface/llm.nvim",
		enabled = false,
		event = "VeryLazy",
		opts = {
			model = "codellama:7b",
			backend = "ollama",
			url = "http://localhost:11434",

			request_body = {
				parameters = {
					max_new_tokens = 60,
					temperature = 0.2,
					top_p = 0.95,
				},
			},

			fim = {
				enabled = true,
				prefix = "<PRE>",
				middle = "<MID>",
				suffix = "<SUF>",
			},
		},
	},
}

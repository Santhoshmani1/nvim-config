function high(name, fg, bg, gui)
	vim.cmd(
		"hi "
			.. name
			.. (fg and (" guifg=" .. fg) or "")
			.. (bg and (" guibg=" .. bg) or "")
			.. (gui and (" gui=" .. gui) or "")
	)
end

function link(name, to)
	vim.cmd("hi! link " .. name .. " " .. to)
end

high("Comment", "green")
high("Error", "#ff4455", "#403142", "none")
high("Number", "#FFA500")
high("Keyword", "#fe0fff")

link("Constant", "Number")
link("PreProc", "Keyword")
link("Function", "Type")

high("PunctuationBracket", "#00CED1")
link("@punctuation.bracket", "PunctuationBracket")
high("PunctuationSemicolon", "white")
link("@punctuation.delimiter", "PunctuationSemicolon")
link("Operator", "PunctuationBracket")

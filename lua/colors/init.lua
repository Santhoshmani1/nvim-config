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
high("Number", "lightgray")
high("Keyword", "blue")
high("Type", "blue", "nil", "none")
-- high("String", "")

link("Constant", "Number")
link("PreProc", "Keyword")
link("Statement", "Keyword")
link("Function", "Type")
link("Identifier", "Normal")
link("Special", "Normal")

link("@constant.builtin", "Constant")
link("@function.builtin.python", "Keyword")
link("@string.escape", "Comment")
link("@variable.builtin", "Keyword")
link("@punctuation.delimiter", "Keyword")
link("@function.builtin", "Keyword")

high("PunctuationBracket", "yellow")
link("@punctuation.bracket", "PunctuationBracket")
high("PunctuationSemicolon", "white")
link("@punctuation.delimiter", "PunctuationSemicolon")
link("Operator", "PunctuationBracket")

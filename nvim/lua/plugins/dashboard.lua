local g = vim.g
g.dashboard_disable_at_vimenter = 0
g.dashboard_disable_statusline = 1
g.dashboard_default_executive = "telescope"
g.dashboard_custom_header = {
	-- "                    ___                                                      ",
	-- "                   /\\_ \\                                                   ",
	-- "  __  __  __     __\\//\\ \\      ___     ___     ___ ___       __           ",
	-- " /\\ \\/\\ \\/\\ \\  /'__`\\\\ \\ \\    /'___\\  / __`\\ /' __` __`\\   /'__`\\    ",
	-- " \\ \\ \\_/ \\_/ \\/\\  __/ \\_\\ \\_ /\\ \\__/ /\\ \\L\\ \\/\\ \\/\\ \\/\\ \\ /\\  __/  ",
	-- "  \\ \\___x___/'\\ \\____\\/\\____\\\\ \\____\\\\ \\____/\\ \\_\\ \\_\\ \\_\\\\ \\____\\ ",
	-- "   \\/__//__/   \\/____/\\/____/ \\/____/ \\/___/  \\/_/\\/_/\\/_/ \\/____/         ",
	
	-- "        __                ",
	-- "  	    /\\ \\            ",
	-- "   ____\\ \\ \\____       ",
	-- "  /',__\\\\ \\ '__`\\     ",
	-- " /\\__, `\\\\ \\ \\L\\ \\ ",
	-- " \\/\\____/ \\ \\_,__/    ",
	-- "  \\/___/   \\/___/       ",

	"                    ___                                                         __ ",
	"                   /\\_ \\                                                       /\\ \\ ",
	"  __  __  __     __\\//\\ \\      ___     ___     ___ ___       __            ____\\ \\ \\____ ",
	" /\\ \\/\\ \\/\\ \\  /'__`\\\\ \\ \\    /'___\\  / __`\\ /' __` __`\\   /'__`\\         /',__\\\\ \\ '__`\\ ",
	" \\ \\ \\_/ \\_/ \\/\\  __/ \\_\\ \\_ /\\ \\__/ /\\ \\L\\ \\/\\ \\/\\ \\/\\ \\ /\\  __/  __    /\\__, `\\\\ \\ \\L\\ \\ ",
	"  \\ \\___x___/'\\ \\____\\/\\____\\\\ \\____\\\\ \\____/\\ \\_\\ \\_\\ \\_\\\\ \\____\\/\\ \\   \\/\\____/ \\ \\_,__/  ",
	"   \\/__//__/   \\/____/\\/____/ \\/____/ \\/___/  \\/_/\\/_/\\/_/ \\/____/\\ \\/    \\/___/   \\/___/ ",
	"                                                                   \\/ ",

	-- "                __       __                          __                                 									",
	-- "               /\\ \\     /\\ \\                        /\\ \\                                								",
	-- "   ____    ___ \\ \\ \\____\\ \\ \\___       __       ___ \\ \\ \\____     __   _ __    __       							",
	-- "  /',__\\  / __`\\\\ \\ '__`\\\\ \\  _ `\\   /'__`\\   /' _ `\\\\ \\ '__`\\  /'__`\\/\\`'__\\/'__`\\     					",
	-- " /\\__, `\\/\\ \\L\\ \\\\ \\ \\L\\ \\\\ \\ \\ \\ \\ /\\ \\L\\.\\_ /\\ \\/\\ \\\\ \\ \\L\\ \\/\\  __/\\ \\ \\//\\ \\L\\.\\_  ",
	-- " \\/\\____/\\ \\____/ \\ \\_,__/ \\ \\_\\ \\_\\\\ \\__/.\\_\\\\ \\_\\ \\_\\\\ \\_,__/\\ \\____\\\\ \\_\\\\ \\__/.\\_\\  	",
	-- "  \\/___/  \\/___/   \\/___/   \\/_/\\/_/ \\/__/\\/_/ \\/_/\\/_/ \\/___/  \\/____/ \\/_/ \\/__/\\/_/  						",
}
g.dashboard_custom_section = {
	a = { description = { "  Find File                 SPC f f" }, command = "Telescope find_files" },
	c = { description = { "  Find Word                 SPC g r" }, command = "Telescope live_grep" },
	b = { description = { "  Recents                   SPC f a" }, command = "Telescope oldfiles" },
	d = { description = { "洛 New File                  SPC f n" }, command = "DashboardNewFile" },
	e = { description = { "  Bookmarks                 SPC b m" }, command = "Telescope marks" },
	f = { description = { "  Load Last Session         SPC l  " }, command = "SessionLoad" },
}
g.dashboard_custom_footer = {
	-- "	               __                       ",
	-- "	__     ___    /\\_\\     ___    __  __    ",
	-- "  /'__`\\ /' _ `\\  \\/\\ \\   / __`\\ /\\ \\/\\ \\   ",
	-- " /\\  __/ /\\ \\/\\ \\  \\ \\ \\ /\\ \\L\\ \\\\ \\ \\_\\ \\  ",
	-- " \\ \\____\\\\ \\_\\ \\_\\ _\\ \\ \\\\ \\____/ \\/`____ \\ ",
	-- "  \\/____/ \\/_/\\/_//\\ \\_\\ \\\\/___/   `/___/> \\",
	-- "				  \\ \\____/            /\\___/",
	-- "				   \\/___/             \\/__/ ",
	" sobhan bera", -- this line will be of different color
}
vim.cmd("autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2")

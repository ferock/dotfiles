local awful = require("awful")

--- Tags
--- ~~~~

screen.connect_signal("request::desktop_decoration", function(s)
	--- Each screen has its own tag table.
  --local names = { "", "", "", "", "", "", "", "" }
  awful.util.tagnames = { "", "", "", "", "5", "6" }
	awful.tag(awful.util.tagnames, s, awful.layout.layouts[1])
end)

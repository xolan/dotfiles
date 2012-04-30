---------------------------
-- Monokai awesome theme --
---------------------------

theme = {}

theme.font          = "Terminus 8"

theme.bg_normal     = "#1b1d1e"
theme.bg_focus      = "#3b3d1e"
theme.bg_urgent     = "#fd971f"
theme.bg_minimize   = "#56c2d6"

theme.fg_normal     = "#ccccc6"
theme.fg_focus      = "#f8f8f2"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.border_width  = "1"
theme.border_normal = "#505454"
theme.border_focus  = "#82b414"
theme.border_marked = "#feed6c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel   = "/home/xolan/.config/awesome/themes/monokai/taglist/squarefw.png"
theme.taglist_squares_unsel = "/home/xolan/.config/awesome/themes/monokai/taglist/squarew.png"

theme.tasklist_floating_icon = "/home/xolan/.config/awesome/themes/monokai/tasklist/floatingw.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = "/home/xolan/.config/awesome/themes/monokai/submenu.png"
theme.menu_height = "15"
theme.menu_width  = "100"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = "/home/xolan/.config/awesome/themes/monokai/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "/home/xolan/.config/awesome/themes/monokai/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = "/home/xolan/.config/awesome/themes/monokai/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = "/home/xolan/.config/awesome/themes/monokai/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = "/home/xolan/.config/awesome/themes/monokai/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = "/home/xolan/.config/awesome/themes/monokai/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = "/home/xolan/.config/awesome/themes/monokai/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = "/home/xolan/.config/awesome/themes/monokai/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = "/home/xolan/.config/awesome/themes/monokai/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = "/home/xolan/.config/awesome/themes/monokai/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = "/home/xolan/.config/awesome/themes/monokai/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = "/home/xolan/.config/awesome/themes/monokai/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = "/home/xolan/.config/awesome/themes/monokai/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = "/home/xolan/.config/awesome/themes/monokai/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = "/home/xolan/.config/awesome/themes/monokai/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = "/home/xolan/.config/awesome/themes/monokai/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = "/home/xolan/.config/awesome/themes/monokai/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = "/home/xolan/.config/awesome/themes/monokai/titlebar/maximized_focus_active.png"

-- You can use your own command to set your wallpaper
theme.wallpaper_cmd = { "awsetbg /home/xolan/.config/awesome/themes/monokai/background.png" }

-- You can use your own layout icons like this:
theme.layout_fairh = "/home/xolan/.config/awesome/themes/monokai/layouts/fairhw.png"
theme.layout_fairv = "/home/xolan/.config/awesome/themes/monokai/layouts/fairvw.png"
theme.layout_floating  = "/home/xolan/.config/awesome/themes/monokai/layouts/floatingw.png"
theme.layout_magnifier = "/home/xolan/.config/awesome/themes/monokai/layouts/magnifierw.png"
theme.layout_max = "/home/xolan/.config/awesome/themes/monokai/layouts/maxw.png"
theme.layout_fullscreen = "/home/xolan/.config/awesome/themes/monokai/layouts/fullscreenw.png"
theme.layout_tilebottom = "/home/xolan/.config/awesome/themes/monokai/layouts/tilebottomw.png"
theme.layout_tileleft   = "/home/xolan/.config/awesome/themes/monokai/layouts/tileleftw.png"
theme.layout_tile = "/home/xolan/.config/awesome/themes/monokai/layouts/tilew.png"
theme.layout_tiletop = "/home/xolan/.config/awesome/themes/monokai/layouts/tiletopw.png"
theme.layout_spiral  = "/home/xolan/.config/awesome/themes/monokai/layouts/spiralw.png"
theme.layout_dwindle = "/home/xolan/.config/awesome/themes/monokai/layouts/dwindlew.png"

theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:encoding=utf-8:textwidth=80

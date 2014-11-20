function monitor_home_docked {
	xrandr --output LVDS1 --auto --pos 0x800 --output HDMI1 --auto --pos 1280x0 --primary
}

function monitor_single {
	xrandr --output HDMI1 --off --output LVDS1 --auto --primary
}

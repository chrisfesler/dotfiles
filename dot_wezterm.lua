local wezterm = require("wezterm")
local config = wezterm.config_builder()

local function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Catppuccin Mocha"
	else
		return "Catppuccin Macchiato"
	end
end

-- This is where you actually apply your config choices
config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())
config.font = wezterm.font("FiraMono Nerd Font")
config.font_size = 16
config.enable_tab_bar = true
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

-- and finally, return the configuration to wezterm
return config

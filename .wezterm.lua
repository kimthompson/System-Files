-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- For example, changing the color scheme:
config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font {
  family = 'Cascadia Code NF',
  weight = "Regular",
  harfbuzz_features = { 'ss01' }
}
config.font_size = 13.0
config.hide_tab_bar_if_only_one_tab = true

-- This is where you actually apply your config choices
-- config.leader = { key = 'Space', mods = 'CTRL', timeout_milliseconds = 1000 }
-- config.keys = {
--   -- splitting
--   {
--     mods   = "LEADER",
--     key    = "-",
--     action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }
--   },
--   {
--     mods   = "LEADER",
--     key    = "|",
--     action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }
--   },
--   -- rotate panes
--   {
--     mods = "LEADER",
--     key = "O",
--     action = wezterm.action.RotatePanes "Clockwise"
--   },
--   -- show the pane selection mode, but have it swap the active and selected panes
--   {
--     mods = 'LEADER',
--     key = 'o',
--     action = wezterm.action.PaneSelect {
--       mode = 'SwapWithActive',
--     },
--   },
--   -- activate copy mode or vim mode
--   {
--     key = 'Enter',
--     mods = 'LEADER',
--     action = wezterm.action.ActivateCopyMode
--   }
-- }

-- sample options from smart-splits repo (see NeoVIM setup)


-- and finally, return the configuration to wezterm
return config


-- wezterm.font("Cascadia Code", {weight="ExtraLight", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaCode-ExtraLight.otf, CoreText
-- wezterm.font("Cascadia Code", {weight="ExtraLight", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Code ExtraLight) /Users/kimtho/Library/Fonts/CascadiaCode-ExtraLightItalic.otf, CoreText
-- wezterm.font("Cascadia Code", {weight="Light", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaCode-Light.otf, CoreText
-- wezterm.font("Cascadia Code", {weight="Light", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Code Light) /Users/kimtho/Library/Fonts/CascadiaCode-LightItalic.otf, CoreText
-- wezterm.font("Cascadia Code", {weight="DemiLight", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaCode-SemiLight.otf, CoreText
-- wezterm.font("Cascadia Code", {weight="DemiLight", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Code SemiLight) /Users/kimtho/Library/Fonts/CascadiaCode-SemiLightItalic.otf, CoreText
-- wezterm.font("Cascadia Code", {weight="Regular", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaCode-Regular.otf, CoreText
-- wezterm.font("Cascadia Code", {weight="Regular", stretch="Normal", style="Italic"}) -- /Users/kimtho/Library/Fonts/CascadiaCode-Italic.otf, CoreText
-- wezterm.font("Cascadia Code", {weight="DemiBold", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaCode-SemiBold.otf, CoreText
-- wezterm.font("Cascadia Code", {weight="DemiBold", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Code SemiBold) /Users/kimtho/Library/Fonts/CascadiaCode-SemiBoldItalic.otf, CoreText
-- wezterm.font("Cascadia Code", {weight="Bold", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaCode-Bold.otf, CoreText
-- wezterm.font("Cascadia Code", {weight="Bold", stretch="Normal", style="Italic"}) -- /Users/kimtho/Library/Fonts/CascadiaCode-BoldItalic.otf, CoreText
-- wezterm.font("Cascadia Code NF", {weight="ExtraLight", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaCodeNF-ExtraLight.otf, CoreText
-- wezterm.font("Cascadia Code NF", {weight="ExtraLight", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Code NF ExtraLight) /Users/kimtho/Library/Fonts/CascadiaCodeNF-ExtraLightItalic.otf, CoreText
-- wezterm.font("Cascadia Code NF", {weight="Light", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaCodeNF-Light.otf, CoreText
-- wezterm.font("Cascadia Code NF", {weight="Light", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Code NF Light) /Users/kimtho/Library/Fonts/CascadiaCodeNF-LightItalic.otf, CoreText
-- wezterm.font("Cascadia Code NF", {weight="DemiLight", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaCodeNF-SemiLight.otf, CoreText
-- wezterm.font("Cascadia Code NF", {weight="DemiLight", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Code NF SemiLight) /Users/kimtho/Library/Fonts/CascadiaCodeNF-SemiLightItalic.otf, CoreText
-- wezterm.font("Cascadia Code NF", {weight="Regular", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaCodeNF-Regular.otf, CoreText
-- wezterm.font("Cascadia Code NF", {weight="Regular", stretch="Normal", style="Italic"}) -- /Users/kimtho/Library/Fonts/CascadiaCodeNF-Italic.otf, CoreText
-- wezterm.font("Cascadia Code NF", {weight="DemiBold", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaCodeNF-SemiBold.otf, CoreText
-- wezterm.font("Cascadia Code NF", {weight="DemiBold", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Code NF SemiBold) /Users/kimtho/Library/Fonts/CascadiaCodeNF-SemiBoldItalic.otf, CoreText
-- wezterm.font("Cascadia Code NF", {weight="Bold", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaCodeNF-Bold.otf, CoreText
-- wezterm.font("Cascadia Code NF", {weight="Bold", stretch="Normal", style="Italic"}) -- /Users/kimtho/Library/Fonts/CascadiaCodeNF-BoldItalic.otf, CoreText
-- wezterm.font("Cascadia Code PL", {weight="ExtraLight", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaCodePL-ExtraLight.otf, CoreText
-- wezterm.font("Cascadia Code PL", {weight="ExtraLight", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Code PL ExtraLight) /Users/kimtho/Library/Fonts/CascadiaCodePL-ExtraLightItalic.otf, CoreText
-- wezterm.font("Cascadia Code PL", {weight="Light", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaCodePL-Light.otf, CoreText
-- wezterm.font("Cascadia Code PL", {weight="Light", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Code PL Light) /Users/kimtho/Library/Fonts/CascadiaCodePL-LightItalic.otf, CoreText
-- wezterm.font("Cascadia Code PL", {weight="DemiLight", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaCodePL-SemiLight.otf, CoreText
-- wezterm.font("Cascadia Code PL", {weight="DemiLight", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Code PL SemiLight) /Users/kimtho/Library/Fonts/CascadiaCodePL-SemiLightItalic.otf, CoreText
-- wezterm.font("Cascadia Code PL", {weight="Regular", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaCodePL-Regular.otf, CoreText
-- wezterm.font("Cascadia Code PL", {weight="Regular", stretch="Normal", style="Italic"}) -- /Users/kimtho/Library/Fonts/CascadiaCodePL-Italic.otf, CoreText
-- wezterm.font("Cascadia Code PL", {weight="DemiBold", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaCodePL-SemiBold.otf, CoreText
-- wezterm.font("Cascadia Code PL", {weight="DemiBold", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Code PL SemiBold) /Users/kimtho/Library/Fonts/CascadiaCodePL-SemiBoldItalic.otf, CoreText
-- wezterm.font("Cascadia Code PL", {weight="Bold", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaCodePL-Bold.otf, CoreText
-- wezterm.font("Cascadia Code PL", {weight="Bold", stretch="Normal", style="Italic"}) -- /Users/kimtho/Library/Fonts/CascadiaCodePL-BoldItalic.otf, CoreText
-- wezterm.font("Cascadia Mono", {weight="ExtraLight", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaMono-ExtraLight.otf, CoreText
-- wezterm.font("Cascadia Mono", {weight="ExtraLight", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Mono ExtraLight) /Users/kimtho/Library/Fonts/CascadiaMono-ExtraLightItalic.otf, CoreText
-- wezterm.font("Cascadia Mono", {weight="Light", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaMono-Light.otf, CoreText
-- wezterm.font("Cascadia Mono", {weight="Light", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Mono Light) /Users/kimtho/Library/Fonts/CascadiaMono-LightItalic.otf, CoreText
-- wezterm.font("Cascadia Mono", {weight="DemiLight", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaMono-SemiLight.otf, CoreText
-- wezterm.font("Cascadia Mono", {weight="DemiLight", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Mono SemiLight) /Users/kimtho/Library/Fonts/CascadiaMono-SemiLightItalic.otf, CoreText
-- wezterm.font("Cascadia Mono", {weight="Regular", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaMono-Regular.otf, CoreText
-- wezterm.font("Cascadia Mono", {weight="Regular", stretch="Normal", style="Italic"}) -- /Users/kimtho/Library/Fonts/CascadiaMono-Italic.otf, CoreText
-- wezterm.font("Cascadia Mono", {weight="DemiBold", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaMono-SemiBold.otf, CoreText
-- wezterm.font("Cascadia Mono", {weight="DemiBold", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Mono SemiBold) /Users/kimtho/Library/Fonts/CascadiaMono-SemiBoldItalic.otf, CoreText
-- wezterm.font("Cascadia Mono", {weight="Bold", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaMono-Bold.otf, CoreText
-- wezterm.font("Cascadia Mono", {weight="Bold", stretch="Normal", style="Italic"}) -- /Users/kimtho/Library/Fonts/CascadiaMono-BoldItalic.otf, CoreText
-- wezterm.font("Cascadia Mono NF", {weight="ExtraLight", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaMonoNF-ExtraLight.otf, CoreText
-- wezterm.font("Cascadia Mono NF", {weight="ExtraLight", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Mono NF ExtraLight) /Users/kimtho/Library/Fonts/CascadiaMonoNF-ExtraLightItalic.otf, CoreText
-- wezterm.font("Cascadia Mono NF", {weight="Light", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaMonoNF-Light.otf, CoreText
-- wezterm.font("Cascadia Mono NF", {weight="Light", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Mono NF Light) /Users/kimtho/Library/Fonts/CascadiaMonoNF-LightItalic.otf, CoreText
-- wezterm.font("Cascadia Mono NF", {weight="DemiLight", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaMonoNF-SemiLight.otf, CoreText
-- wezterm.font("Cascadia Mono NF", {weight="DemiLight", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Mono NF SemiLight) /Users/kimtho/Library/Fonts/CascadiaMonoNF-SemiLightItalic.otf, CoreText
-- wezterm.font("Cascadia Mono NF", {weight="Regular", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaMonoNF-Regular.otf, CoreText
-- wezterm.font("Cascadia Mono NF", {weight="Regular", stretch="Normal", style="Italic"}) -- /Users/kimtho/Library/Fonts/CascadiaMonoNF-Italic.otf, CoreText
-- wezterm.font("Cascadia Mono NF", {weight="DemiBold", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaMonoNF-SemiBold.otf, CoreText
-- wezterm.font("Cascadia Mono NF", {weight="DemiBold", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Mono NF SemiBold) /Users/kimtho/Library/Fonts/CascadiaMonoNF-SemiBoldItalic.otf, CoreText
-- wezterm.font("Cascadia Mono NF", {weight="Bold", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaMonoNF-Bold.otf, CoreText
-- wezterm.font("Cascadia Mono NF", {weight="Bold", stretch="Normal", style="Italic"}) -- /Users/kimtho/Library/Fonts/CascadiaMonoNF-BoldItalic.otf, CoreText
-- wezterm.font("Cascadia Mono PL", {weight="ExtraLight", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaMonoPL-ExtraLight.otf, CoreText
-- wezterm.font("Cascadia Mono PL", {weight="ExtraLight", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Mono PL ExtraLight) /Users/kimtho/Library/Fonts/CascadiaMonoPL-ExtraLightItalic.otf, CoreText
-- wezterm.font("Cascadia Mono PL", {weight="Light", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaMonoPL-Light.otf, CoreText
-- wezterm.font("Cascadia Mono PL", {weight="Light", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Mono PL Light) /Users/kimtho/Library/Fonts/CascadiaMonoPL-LightItalic.otf, CoreText
-- wezterm.font("Cascadia Mono PL", {weight="DemiLight", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaMonoPL-SemiLight.otf, CoreText
-- wezterm.font("Cascadia Mono PL", {weight="DemiLight", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Mono PL SemiLight) /Users/kimtho/Library/Fonts/CascadiaMonoPL-SemiLightItalic.otf, CoreText
-- wezterm.font("Cascadia Mono PL", {weight="Regular", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaMonoPL-Regular.otf, CoreText
-- wezterm.font("Cascadia Mono PL", {weight="Regular", stretch="Normal", style="Italic"}) -- /Users/kimtho/Library/Fonts/CascadiaMonoPL-Italic.otf, CoreText
-- wezterm.font("Cascadia Mono PL", {weight="DemiBold", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaMonoPL-SemiBold.otf, CoreText
-- wezterm.font("Cascadia Mono PL", {weight="DemiBold", stretch="Normal", style="Italic"}) -- (AKA: Cascadia Mono PL SemiBold) /Users/kimtho/Library/Fonts/CascadiaMonoPL-SemiBoldItalic.otf, CoreText
-- wezterm.font("Cascadia Mono PL", {weight="Bold", stretch="Normal", style="Normal"}) -- /Users/kimtho/Library/Fonts/CascadiaMonoPL-Bold.otf, CoreText
-- wezterm.font("Cascadia Mono PL", {weight="Bold", stretch="Normal", style="Italic"}) -- /Users/kimtho/Library/Fonts/CascadiaMonoPL-BoldItalic.otf, CoreText

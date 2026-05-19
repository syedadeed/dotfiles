require("system")
require("blur")
require("animations")
require("gestures")
require("rules")

hl.config({
    general = {
        border_size = 0,

        gaps_in = 4,
        gaps_out = 10,

        layout = "dwindle",

        resize_on_border = false
    }
})

hl.config({
    decoration = {
        rounding = 10,

        active_opacity = 1.0,
        fullscreen_opacity = 1.0,
        inactive_opacity = 0.8,

        dim_inactive = true,
        dim_strength = 0.1,

        shadow = {
            enabled = false
        }
    }
})

hl.config({
    group = {
        groupbar = {
            enabled = true,
            render_titles = false,
            indicator_height = 4,
            gaps_out = 0,
            gradients = false,

            col = {
                active = "#d53737",
                locked_active = "#922d6e",
                inactive = "#8c8789",
                locked_inactive = "#8c8789"
            }
        }
    }
})

hl.config({
    dwindle = {
        preserve_split = true
    }
})

hl.config({
    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        background_color = "#000000",
        on_focus_under_fullscreen = 2
    }
})

hl.config({
    cursor = {
        inactive_timeout = 5
    }
})

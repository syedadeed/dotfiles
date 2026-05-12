require("system")
require("blur")
require("animations")
require("gestures")

hl.config({
    general = {
        border_size = 2,
        col = {
            active_border = {colors = {"rgb(16161E)", "rgb(4BA4A3)", "rgb(D56E89)", "rgb(16161E)"}, angle = 45},
            inactive_border = "rgb(1C1D26)"
        },

        gaps_in = 4,
        gaps_out = 10,

        layout = "dwindle",

        resize_on_border = false
    }
})

hl.config({
    decoration = {
        rounding = 20,

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
        col = {
            border_active = {colors = {"rgb(16161E)", "rgb(4BA4A3)", "rgb(D56E89)", "rgb(16161E)"}, angle = 45},
            border_locked_active = {colors = {"rgb(16161E)", "rgb(4BA4A3)", "rgb(D56E89)", "rgb(16161E)"}, angle = 45},
            border_inactive = "rgb(1C1D26)",
            border_locked_inactive = "rgb(1C1D26)"
        },

        groupbar = {
            enabled = true,
            render_titles = false,
            indicator_height = 4,
            gaps_out = 0,
            gradients = false,

            col = {
                active = "rgb(d53737)",
                locked_active = "rgb(922d6e)",
                inactive = "rgb(8c8789)",
                locked_inactive = "rgb(8c8789)"
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
        background_color = "rgb(000000)",
        on_focus_under_fullscreen = 2
    }
})

hl.config({
    cursor = {
        inactive_timeout = 5
    }
})

--Drop Down terminal config
hl.window_rule({
    match = {class = "drop_down"},
    float = true,
    move = {0, 0},
    size = {"(monitor_w)", "(monitor_h*0.25)"},
    rounding = 0,
    border_size = 0
})

hl.window_rule({
    match = {class = "Fuck"},
    workspace = "special:magic"
})

--Smart gaps
hl.workspace_rule({
    workspace = "w[tv1]",
    gaps_out = 0,
    gaps_in = 0
})
hl.window_rule({
    match = {float = false, workspace = "w[tv1]"},
    border_size = 0,
    rounding = 0
})
hl.workspace_rule({
    workspace = "f[1]",
    gaps_out = 0,
    gaps_in = 0
})
hl.window_rule({
    match = {float = false, workspace = "f[1]"},
    border_size = 0,
    rounding = 0
})

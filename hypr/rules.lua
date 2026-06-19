--Drop Down terminal config
hl.window_rule({
    match = {class = "drop_down"},
    float = true,
    move = {0, 0},
    size = {"(monitor_w)", "(monitor_h*0.25)"},
    rounding = 0,
    border_size = 0
})

--Recording protection
hl.window_rule({
    match = {title = ".*WhatsApp.*"},
    no_screen_share = true
})

--File picker window config
hl.window_rule({
    match = {class = "xdg-desktop-portal-gtk"},
    size = {"(monitor_w*0.6)", "(monitor_h*0.7)"},
    float = true,
    center = true
})

--Screen share dialog window config
hl.window_rule({
    match = {class = "hyprland-share-picker"},
    size = {"(monitor_w*0.5)", "(monitor_h*0.5)"},
    float = true,
    center = true
})

--Idk
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

hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

hl.on("hyprland.start", function ()
    hl.exec_cmd("uwsm app -- xremap ~/.config/xremap/config.yml")
end)

hl.config({
    input = {
        kb_layout  = "us",
        follow_mouse = 1,
        touchpad = {
            natural_scroll = true,
        },
        sensitivity = 0
    }
})

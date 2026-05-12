hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

hl.on("hyprland.start", function ()
    hl.exec_cmd("sudo xremap ~/.config/xremap/config.yml")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
end)

hl.env("XCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Classic")
hl.env("HYPRCURSOR_SIZE", "24")

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

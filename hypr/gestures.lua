local mainMod = "SUPER"

hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd("kitty --class drop_down"))

hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("brave"))
hl.bind(mainMod .. " + SHIFT + B", hl.dsp.exec_cmd("brave --incognito"))
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd("hyprpicker -a"))
hl.bind(mainMod .. " + K", hl.dsp.exec_cmd("grim - | tee $HOME/$(date +%Y%m%d_%H%M%S).png | wl-copy"))
hl.bind("Print", hl.dsp.exec_cmd('grim -g "$(slurp)" - | tee $HOME/$(date +%Y%m%d_%H%M%S).png | wl-copy'))

hl.bind(mainMod .. " + V", hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + F", hl.dsp.window.float())
hl.bind(mainMod .. " + P", hl.dsp.window.pin())
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exit())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

hl.bind(mainMod .. " + left", hl.dsp.focus({direction = "left"}))
hl.bind(mainMod .. " + right", hl.dsp.focus({direction = "right"}))
hl.bind(mainMod .. " + up", hl.dsp.focus({direction = "up"}))
hl.bind(mainMod .. " + down", hl.dsp.focus({direction = "down"}))

hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.resize({x = 10, y = 0, relative = true}), {repeating = true})
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.resize({x = -10, y = 0, relative = true}), {repeating = true})
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.resize({x = 0, y = -10, relative = true}), {repeating = true})
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.resize({x = 0, y = 10, relative = true}), {repeating = true})

hl.bind(mainMod .. " + CTRL + right", hl.dsp.window.swap({direction = "right"}))
hl.bind(mainMod .. " + CTRL + left", hl.dsp.window.swap({direction = "left"}))
hl.bind(mainMod .. " + CTRL + up", hl.dsp.window.swap({direction = "up"}))
hl.bind(mainMod .. " + CTRL + down", hl.dsp.window.swap({direction = "down"}))

hl.bind(mainMod .. " + ALT + right", hl.dsp.window.move({x = 10, y = 0, relative = true}), {repeating = true})
hl.bind(mainMod .. " + ALT + left", hl.dsp.window.move({x = -10, y = 0, relative = true}), {repeating = true})
hl.bind(mainMod .. " + ALT + up", hl.dsp.window.move({x = 0, y = -10, relative = true}), {repeating = true})
hl.bind(mainMod .. " + ALT + down", hl.dsp.window.move({x = 0, y = 10, relative = true}), {repeating = true})

hl.bind(mainMod .. " + 1", hl.dsp.focus({workspace = 1}))
hl.bind(mainMod .. " + 2", hl.dsp.focus({workspace = 2}))
hl.bind(mainMod .. " + 3", hl.dsp.focus({workspace = 3}))
hl.bind(mainMod .. " + 4", hl.dsp.focus({workspace = 4}))
hl.bind(mainMod .. " + 5", hl.dsp.focus({workspace = 5}))
hl.bind(mainMod .. " + 6", hl.dsp.focus({workspace = 6}))
hl.bind(mainMod .. " + 7", hl.dsp.focus({workspace = 7}))
hl.bind(mainMod .. " + 8", hl.dsp.focus({workspace = 8}))
hl.bind(mainMod .. " + 9", hl.dsp.focus({workspace = 9}))
hl.bind(mainMod .. " + 0", hl.dsp.focus({workspace = 10}))
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind("SHIFT + right", hl.dsp.focus({workspace = "+1"}))
hl.bind("SHIFT + left", hl.dsp.focus({workspace = "-1"}))

hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({workspace = 1}))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({workspace = 2}))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({workspace = 3}))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({workspace = 4}))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({workspace = 5}))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({workspace = 6}))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({workspace = 7}))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({workspace = 8}))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({workspace = 9}))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({workspace = 10}))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({workspace = "special:magic"}))

hl.bind(mainMod .. " + SHIFT + G", hl.dsp.group.toggle())
hl.bind(mainMod .. " + G", hl.dsp.group.lock_active())

hl.bind(mainMod .. " + Tab", hl.dsp.group.next())

hl.bind(mainMod .. " + CTRL + SHIFT + left", hl.dsp.window.move({into_group = "left"}))
hl.bind(mainMod .. " + CTRL + SHIFT + right", hl.dsp.window.move({into_group = "right"}))
hl.bind(mainMod .. " + CTRL + SHIFT + up", hl.dsp.window.move({into_group = "up"}))
hl.bind(mainMod .. " + CTRL + SHIFT + down", hl.dsp.window.move({into_group = "down"}))

hl.bind(mainMod .. " + Escape", hl.dsp.window.move({out_of_group = true}))

hl.bind(mainMod .. " + SHIFT + Tab", hl.dsp.group.move_window())

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), {mouse = true})
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), {mouse = true})

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+"), {locked = true, repeating = true})
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%-"), {locked = true, repeating = true})
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), {locked = true})
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), {locked = true})
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), {locked = true})
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), {locked = true})
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set +5%"), {locked = true, repeating = true})
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"), {locked = true, repeating = true})

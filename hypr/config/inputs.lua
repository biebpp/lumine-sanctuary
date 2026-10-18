-- Input configuration

hl.config({
    input = {
        -- Keep the existing pointer acceleration setting
        accel_profile = "flat",
        sensitivity = 0.5,

        touchpad = {
            -- Windows-style scrolling direction
            natural_scroll = true,
	    scroll_factor = 1.0,
        },
    },
})

-- Three-finger horizontal swipe: switch workspace
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })

-- Four-finger gestures: preserve the existing actions
hl.gesture({ fingers = 4, direction = "down",  action = "close" })
hl.gesture({ fingers = 4, direction = "up",    action = "fullscreen" })
hl.gesture({ fingers = 4, direction = "left",  action = "float" })

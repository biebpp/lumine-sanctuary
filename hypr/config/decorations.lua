-- Traveler's Sanctuary: warm bronze and golden decorations

hl.config({
    general = {
        gaps_in = 3,
        gaps_out = 8,
        border_size = 2,
        extend_border_grab_area = 10,
        resize_on_border = true,
        col = {
            active_border = {
                colors = { "rgba(d9b96eff)", "rgba(755640ff)" },
                angle = 45,
            },
            inactive_border = MUTED_BRONZE,
        },
    },
    group = {
        col = {
            border_active = TRAVELER_GOLD,
            border_inactive = MUTED_BRONZE,
            border_locked_active = CELESTIAL_IVORY,
            border_locked_inactive = MUTED_BRONZE,
        },
        groupbar = {
            col = {
                active = TRAVELER_GOLD,
                inactive = MUTED_BRONZE,
                locked_active = CELESTIAL_IVORY,
                locked_inactive = MUTED_BRONZE,
            },
        },
    },
    decoration = {
        dim_special = 0.3,
        rounding = 10,
        active_opacity = 0.95,
        inactive_opacity = 0.85,
        fullscreen_opacity = 1,
        blur = {
            size = 5,
            passes = 4,
            special = true,
        },
    },
})

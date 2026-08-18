local active_border_color = { colors = { "rgb(7fa961)", "rgb(8db86b)" }, angle = 45 }
local inactive_border_color = "rgba(404a4088)"

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },
  decoration = {
    rounding = 12,
    blur = {
      enabled = true,
      size = 8,
      passes = 3,
      new_optimizations = true,
    },
  },
  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },
})

-- Match Obsidian, LM Studio, and Telegram transparency to Kitty terminal (0.90)
o.window("^(md.obsidian.Obsidian|obsidian)$", { opacity = "0.90 0.90" })
o.window("^(LM-Studio|lmstudio)$", { opacity = "0.90 0.90" })
o.window("^(org.telegram.desktop)$", { opacity = "0.90 0.90" })

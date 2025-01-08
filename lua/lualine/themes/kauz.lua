local colors = require('colors').colors;

return {
  normal = {
    a = {bg = colors.bg_light, fg = colors.fg_light, gui = 'bold'},
    b = {bg = colors.bg_dark, fg = colors.fg},
    c = {bg = colors.bg_dark, fg = colors.fg}
  },
  insert = {
    a = {bg = colors.bg_light, fg = colors.fg_light, gui = 'bold'},
    b = {bg = colors.bg_dark, fg = colors.fg},
    c = {bg = colors.bg_dark, fg = colors.fg}
  },
  visual = {
    a = {bg = colors.bg_light, fg = colors.fg_light, gui = 'bold'},
    b = {bg = colors.bg_dark, fg = colors.fg},
    c = {bg = colors.bg_dark, fg = colors.fg}
  },
  replace = {
    a = {bg = colors.bg_light, fg = colors.fg_light, gui = 'bold'},
    b = {bg = colors.bg_dark, fg = colors.fg},
    c = {bg = colors.bg_dark, fg = colors.fg}
  },
  command = {
    a = {bg = colors.bg_light, fg = colors.fg_light, gui = 'bold'},
    b = {bg = colors.bg_dark, fg = colors.fg},
    c = {bg = colors.bg_dark, fg = colors.fg}
  },
  inactive = {
    a = {bg = colors.bg_light, fg = colors.fg_light, gui = 'bold'},
    b = {bg = colors.bg_dark, fg = colors.fg},
    c = {bg = colors.bg_dark, fg = colors.fg}
  }
}

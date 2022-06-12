local colors = require('colors').colors;

return {
  normal = {
    a = {bg = colors.bg_light, fg = colors.fg_light, gui = 'bold'},
    b = {bg = colors.bg_dark, fg = colors.fg},
    c = {bg = colors.bg_dark, fg = colors.fg}
  },
  insert = {
    a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
    b = {bg = colors.bg_dark, fg = colors.fg},
    c = {bg = colors.bg_dark, fg = colors.fg}
  },
  visual = {
    a = {bg = colors.blue, fg = colors.black, gui = 'bold'},
    b = {bg = colors.bg_dark, fg = colors.fg},
    c = {bg = colors.bg_dark, fg = colors.fg}
  },
  replace = {
    a = {bg = colors.red, fg = colors.black, gui = 'bold'},
    b = {bg = colors.bg_dark, fg = colors.fg},
    c = {bg = colors.bg_dark, fg = colors.fg}
  },
  command = {
    a = {bg = colors.green, fg = colors.black, gui = 'bold'},
    b = {bg = colors.bg_dark, fg = colors.fg},
    c = {bg = colors.bg_dark, fg = colors.fg}
  },
  inactive = {
    a = {bg = colors.gray15, fg = colors.gray3, gui = 'bold'},
    b = {bg = colors.bg_dark, fg = colors.fg},
    c = {bg = colors.bg_dark, fg = colors.fg}
  }
}

local colors = require('colors').colors;

local defaults = {
    a = {bg = colors.bg_dark, fg = colors.fg},
    b = {bg = colors.bg_dark, fg = colors.fg},
    c = {bg = colors.bg_dark, fg = colors.fg}
  };

return {
  normal = defaults,
  insert = defaults,
  visual = defaults,
  replace = defaults,
  command = defaults,
  inactive = defaults,
}

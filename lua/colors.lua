function map(tbl, f)
    local t = {}
    for k,v in pairs(tbl) do
        t[k] = f(v)
    end
    return t
end

local lush = require('lush')
local hsl = lush.hsl

local white = '#ffffff'

local gray1 = '#f0f0f0'
local gray2 = '#e1e1e1'
local gray3 = '#d2d2d2'
local gray4 = '#c3c3c3'
local gray5 = '#b4b4b4'
local gray6 = '#a5a5a5'
local gray7 = '#969696'
local gray8 = '#878787'
local gray9 = '#787878'
local gray10 = '#696969'
local gray11 = '#5a5a5a'
local gray12 = '#4b4b4b'
local gray13 = '#3c3c3c'
local gray14 = '#2d2d2d'
local gray15 = '#1e1e1e'
local black = '#000000'

local gray8_warm = '#93867b'
local gray11_warm = '#67584c'
local gray14_warm = '#322e29'
local gray14_cold = '#242828'

local cyan_dark = '#004e52'
local cyan = '#00F4FF' -- hue: 183
local cyan_light = '#adfbff'

local yellow_dark = '#756200'
local yellow = '#ffd500'
local yellow_light = '#ffec8f'

local magenta_dark = '#70003e'
local magenta = '#ff008b'
local magenta_light = '#ff9ed3'

local orange_dark = '#6b3200'
local orange = '#FF7600' -- hue: 28
local orange_light = '#ffb87a'

local red_light = '#fe7676'
local red = '#df2020'
local red_dark = '#560000'

local green_dark = '#2e4224'
local green = '#73a659'
local green_light = '#bbe9a5'

local blue_dark = '#0d365e'
local blue = '#407fbf'
local blue_light = '#b3cce6'

-- functional colors
local fg_light = white
local fg = gray1
local bg_light = gray13
local bg = gray14
local bg_dark = gray15
local bg_cold = gray14_cold

local highlight = orange
local highlight_light = orange_light
local faded = gray9
local concealed = gray13

local colors = {
    white = white,
    gray1 = gray1,
    gray2 = gray2,
    gray3 = gray3,
    gray4 = gray4,
    gray5 = gray5,
    gray6 = gray6,
    gray7 = gray7,
    gray8 = gray8,
    gray9 = gray9,
    gray10 = gray10,
    gray11 = gray11,
    gray12 = gray12,
    gray13 = gray13,
    gray14 = gray14,
    gray15 = gray15,
    black = black,
    gray8_warm = gray8_warm,
    gray11_warm = gray11_warm,
    gray14_warm = gray14_warm,
    gray14_cold = gray14_cold,
    cyan_dark = cyan_dark,
    cyan = cyan,
    cyan_light = cyan_light,
    yellow_dark = yellow_dark,
    yellow = yellow,
    yellow_light = yellow_light,
    magenta_dark = magenta_dark,
    magenta = magenta,
    magenta_light = magenta_light,
    orange_dark = orange_dark,
    orange = orange,
    orange_light = orange_light,
    red_light = red_light,
    red = red,
    red_dark = red_dark,
    green_dark = green_dark,
    green = green,
    green_light = green_light,
    blue_dark = blue_dark,
    blue = blue,
    blue_light = blue_light,
    fg_light = fg_light,
    fg = fg,
    bg_light = bg_light,
    bg = bg,
    bg_dark = bg_dark,
    bg_cold = bg_cold,
    highlight = highlight,
    highlight_light = highlight_light,
    faded = faded,
    concealed = concealed,
}

return {
    colors = colors,
    hsl = map(colors, hsl),
}

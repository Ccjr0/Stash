let s:base00 = [ '#' . get(g:, 'base16_gui00', '181818'),  0 ] " black
let s:base01 = [ '#' . get(g:, 'base16_gui01', '282828'), 18 ]
let s:base02 = [ '#' . get(g:, 'base16_gui02', '383838'), 19 ]
let s:base03 = [ '#' . get(g:, 'base16_gui03', '585858'),  8 ]
let s:base04 = [ '#' . get(g:, 'base16_gui04', 'B8B8B8'), 20 ]
let s:base05 = [ '#' . get(g:, 'base16_gui05', 'D8D8D8'),  7 ]
let s:base06 = [ '#' . get(g:, 'base16_gui06', 'E8E8E8'), 21 ]
let s:base07 = [ '#' . get(g:, 'base16_gui07', 'F8F8F8'), 15 ] " white

let s:base08 = [ '#' . get(g:, 'base16_gui08', 'AB4642'),  1 ] " red
let s:base09 = [ '#' . get(g:, 'base16_gui09', 'DC9656'), 16 ] " orange
let s:base0A = [ '#' . get(g:, 'base16_gui0A', 'F7CA88'),  3 ] " yellow
let s:base0B = [ '#' . get(g:, 'base16_gui0B', 'A1B56C'),  2 ] " green
let s:base0C = [ '#' . get(g:, 'base16_gui0C', '86C1B9'),  6 ] " teal
let s:base0D = [ '#' . get(g:, 'base16_gui0D', '7CAFC2'),  4 ] " blue
let s:base0E = [ '#' . get(g:, 'base16_gui0E', 'BA8BAF'),  5 ] " pink
let s:base0F = [ '#' . get(g:, 'base16_gui0F', 'A16946'), 17 ] " brown

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left     = [ [ s:base01, s:base03 ], [ s:base05, s:base02 ] ]
let s:p.insert.left     = [ [ s:base00, s:base0D ], [ s:base05, s:base02 ] ]
let s:p.visual.left     = [ [ s:base00, s:base09 ], [ s:base05, s:base02 ] ]
let s:p.replace.left    = [ [ s:base00, s:base08 ], [ s:base05, s:base02 ] ]
let s:p.inactive.left   = [ [ s:base02, s:base00 ] ]

let s:p.normal.middle   = [ [ s:base07, s:base00 ] ]
let s:p.inactive.middle = [ [ s:base01, s:base00 ] ]

let s:p.normal.right    = [ [ s:base01, s:base03 ], [ s:base03, s:base02 ] ]
let s:p.inactive.right  = [ [ s:base01, s:base00 ] ]

let s:p.normal.error    = [ [ s:base07, s:base08 ] ]
let s:p.normal.warning  = [ [ s:base07, s:base09 ] ]

let s:p.tabline.left    = [ [ s:base05, s:base02 ] ]
let s:p.tabline.middle  = [ [ s:base05, s:base01 ] ]
let s:p.tabline.right   = [ [ s:base05, s:base02 ] ]
let s:p.tabline.tabsel  = [ [ s:base02, s:base0A ] ]

let g:lightline#colorscheme#base16#palette = lightline#colorscheme#flatten(s:p)

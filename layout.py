from libqtile import layout
from libqtile.config import Match

layout_theme = {
    'border_width': 2,
}

layouts = [
    layout.Columns(**layout_theme),
    layout.Max()
]

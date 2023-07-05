from libqtile.config import Group, Key
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
from libqtile.config import Click, Drag

# A list of available commands that can be bound to keys can be found
# at https://docs.qtile.org/en/latest/manual/config/lazy.html

mod = 'mod4' # Mode set to Window key/Super key/Command key

imagemagick = "/nix/store/hx76gckpydhs77whirh9wjf4lscq1m3w-imagemagick-7.1.0-47/bin/import"
screenshort = '$XDG_PICTURES_DIR/Screenshort/$(date +%d-%b-%Y_%T)_screenshort.png'

# Qtile keyboard shortcuts
keys = [
  # Switch Keys
  Key([mod], "h", lazy.layout.left(), "Move focus to left"),
  Key([mod], "l", lazy.layout.right(), "Move focus to right"),
  Key([mod], "j", lazy.layout.down(), "Move focus down"),
  Key([mod], "k", lazy.layout.up(), "Move focus up"),
  # Move Keys
  Key([mod, "shift"], "h", lazy.layout.shuffle_left(), "Move window to the left"),
  Key([mod, "shift"], "l", lazy.layout.shuffle_right(), "Move window to the right"),
  Key([mod, "shift"], "j", lazy.layout.shuffle_down(), "Move window down"),
  Key([mod, "shift"], "k", lazy.layout.shuffle_up(), "Move window up"),

  # Grow Keys
  Key([mod, "control"], "h", lazy.layout.grow_left(), "Grow window to the left"),
  Key([mod, "control"], "l", lazy.layout.grow_right(), "Grow window to the right"),
  Key([mod, "control"], "j", lazy.layout.grow_down(), "Grow window down"),
  Key([mod, "control"], "k", lazy.layout.grow_up(), "Grow window up"),
  Key([mod], "n", lazy.layout.normalize(), "Reset all window sizes"),

  # Qtile
  Key([mod, 'control'], 'r', lazy.reload_config(), 'Reload config Qtile'),
  Key([mod, 'control'], 'q', lazy.shutdown(), 'Quite Qtile'),

  # Window
  Key([mod], 'q',lazy.window.kill(), 'Close window'),
  Key([mod], 'space',lazy.window.toggle_fullscreen(), 'Fullscreen window'),
  Key([mod], 'f', lazy.window.toggle_floating(), 'Floating window'),
  Key([mod], 'Tab', lazy.next_layout(), 'Switch window layout'),
  Key([mod, 'shift'], 'Tab', lazy.layout.toggle_split(), 'Split window'),
  Key([mod, 'control'], 'Tab', lazy.layout.normalize(), 'Normalize window'),

  # Volume
  Key([mod], 'v', lazy.spawn('amixer -q sset Master 1%+'), 'Increase Volume'),
  Key([mod, 'shift'], 'v', lazy.spawn('amixer -q sset Master 1%-'), 'Decrease Volume'),
  Key([mod, 'control'], 'v', lazy.spawn('amixer -c 0 -q set Master toggle'), 'Mute Volume'),

  # Mic
  Key([mod], 'm', lazy.spawn('amixer set Capture 1%+'), 'Increase mic sensitivity'),
  Key([mod, 'shift'], 'm', lazy.spawn('amixer set Capture 1%-'), 'Decrease mic sensitivity'),
  Key([mod, 'control'], 'm', lazy.spawn('amixer set Capture toggle'), 'Mute mic'),

  # Brightness
  Key([mod], 'b', lazy.spawn('xbacklight -inc 1'), 'Increase brightness'),
  Key([mod, 'shift'], 'b', lazy.spawn('xbacklight -dec 1'), 'Decrease brightness'),

  # Screenshot
  Key([mod], 's', lazy.spawn(f'bash -c "{imagemagick} {screenshort}"'), "Screenshot of area"),
  Key([mod, 'shift'], 's', lazy.spawn(f'bash -c "{imagemagick} -window root $XDG_PICTURES_DIR/Screenshort/$(date +%d-%b-%Y_%T)_screenshort.png"'),
      "Screenshot fullscreen"),

  # Menu
  Key([mod], 'c', lazy.spawn('kitty --class "float" clipmenu'), 'Clipboard menu'),
  Key([mod], 'e', lazy.spawn('bash -c "$XDG_BIN_HOME/emoji | xclip -selection clipboard"'), 'Emoji'),

  # Application
  Key([mod], 'Return', lazy.spawn(guess_terminal()), 'Terminal'),
  Key([mod], 'i', lazy.spawn('brave'), 'Browser'),
  Key([mod], 'o', lazy.spawn('codium'), 'Editor'),
]

# Keyboard shortcut for Workspaces
groups = [Group(i) for i in '123456789']
for i in groups:
  keys.extend([
    Key([mod], i.name, lazy.group[i.name].toscreen(), f'Go to group {i.name}'),
    Key([mod, 'shift'], i.name, lazy.window.togroup(i.name, switch_group=True), f'Move window & Switch focus to group {i.name}'),
    Key([mod, 'control'], i.name, lazy.window.togroup(i.name), f'Move window to group {i.name}'),
  ])

# Drag floating layouts with cursor.
mouse = [
  Drag([mod], "Button1",
    lazy.window.set_position_floating(), start=lazy.window.get_position()),
  Drag([mod], "Button3",
    lazy.window.set_size_floating(), start=lazy.window.get_size()),
  Click([mod], "Button2",
    lazy.window.bring_to_front()),
]

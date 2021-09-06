# Copyright (c) 2010 Aldo Cortesi
# Copyright (c) 2010, 2014 dequis
# Copyright (c) 2012 Randall Ma
# Copyright (c) 2012-2014 Tycho Andersen
# Copyright (c) 2012 Craig Barnes
# Copyright (c) 2013 horsik
# Copyright (c) 2013 Tao Sauvage
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

from typing import List  # noqa: F401

from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile import qtile

mod = "mod4"
terminal = "kitty"
browser = "brave-browser-nightly"
thunar = "thunar"
nitrogen = "nitrogen"
record = "simplescreenrecorder"
spotify = "spotify"
kdeconnect = "kdeconnect-app"
sublime = "subl"
qutebrowser = "qutebrowser"
oomox = "oomox-gui"
office = "onlyoffice-desktopeditors"

colors = [
        "#282c34",  # 0:background
        "#Eceff4",  # 1:active
        "#7c818c",  # 2:inactive
        "#e06c75",  # 3:red 
        "#98c379",  # 4:green
        "#ebcb8b",  # 5:yellow
        "#5e81ac",  # 6:blue
        "#c678dd",  # 7:magenta
        "#88c0d0",  # 8:cyan
        "#3b4252",  # 9:selection
        ] # magenta 

keys = [
    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),

    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"), 
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(),desc="Move window to the right"),

    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
       Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"), 
    Key([mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),

    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack"),
    # lauch
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key([mod], "e", lazy.spawn(browser), desc="Launch microsoft-edge-beta"),
    Key([mod], "s", lazy.spawn(spotify), desc="Launch spotify"),
    Key([mod, "control", "shift"], "r", lazy.spawn(record), desc="Launch simple screen record"),
    Key([mod], "c", lazy.spawn(kdeconnect), desc="Launch kde connect"),
    Key([mod], "f", lazy.spawn(thunar), desc="Launch thunar"),
    Key([mod], "d", lazy.spawn(office), desc="Launch office"),

    Key([mod], "o", lazy.spawn(oomox), desc="Launch oomox"),
    Key([mod], "n", lazy.spawn(nitrogen), desc="Launch nitrogen"),

    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),

    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "shift"], "r", lazy.restart(), desc="Restart Qtile"),
    Key([mod, "shift"], "q", lazy.shutdown(), desc="Shutdown Qtile"),

    Key([mod, "control"], "r", lazy.spawn("reboot")),
    Key([mod, "control"], "q", lazy.spawn("poweroff")),

    Key([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),

    # Change the volume if your keyboard has special volume keys.
    Key([], "XF86AudioMute", lazy.spawn("amixer -q set Master toggle")),
    Key([], "XF86AudioLowerVolume", lazy.spawn("amixer -c 0 set Master 2dB- unmute")),
    Key([], "XF86AudioRaiseVolume", lazy.spawn("amixer -c 0 set Master 2dB+ unmute")),

    # Also allow changing volume the old fashioned way.
    # Key([mod], "equal", lazy.spawn("amixer -c 0 -q set Master 2dB+ unmute")),
    # Key([mod], "minus", lazy.spawn("amixer -c 0 -q set Master 2dB- unmute")),

    # Brightness
    Key([], "XF86MonBrightnessUp", lazy.spawn("brightnessctl set +5%")),
    Key([], "XF86MonBrightnessDown", lazy.spawn("brightnessctl set 5%-")),

    # Take a screenshot
    Key([], "Print", lazy.spawn("scrot '%y-%m-%d-%H%M%S_screenshot.jpg' -e 'mv $f ~/Pictures/'")),]

#groups = [Group(i) for i in "1234567890"]
#for i in groups:
#    keys.extend([
        ## mod1 + letter of group = switch to group
#        Key([mod], i.name, lazy.group[i.name].toscreen(), desc="Switch to group {}".format(i.name)),

        ## mod1 + shift + letter of group = switch to & move focused window to group
#        Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True),
#            desc="Switch to & move focused window to group {}".format(i.name)),
        # Or, use below if you prefer not to switch to that group.
        # # mod1 + shift + letter of group = move focused window to group
        # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
        #     desc="move focused window to group {}".format(i.name)),
#    ])
groups = [Group(i) for i in ["1","2","3","4","5","6","7","8","9",]]
# groups = [Group(i) for i in ["T", "O", "À", "N"]]
for i, group in enumerate(groups):
    actual_key = str(i + 1)
    keys.extend([
        # Switch to workspace N
        Key([mod], actual_key, lazy.group[group.name].toscreen()),
        # Send window to workspace N
        Key([mod, "shift"], actual_key, lazy.window.togroup(group.name))

    ])


layout_conf = { 
    "border_focus": colors[8],
    "border_normal": colors[0] 
}

layouts = [
    layout.Columns(**layout_conf, margin=4, border_width=2),
    # layout.Bsp(**layout_conf),
    layout.Floating(border_focus=colors[8]),
    # layout.Max(),
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

widget_defaults = dict(
    font = "DejaVu Sans",
    fontsize = 12,
    padding = 3,
    background = ["#282c34"]
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.Image(filename='~/Pictures/signature.png'),
                widget.GroupBox(
                    active = colors[1],
                    inactive = colors[2],
                    highlight_method = "block",
                    highlight_color = colors[9],
                    this_current_screen_border = colors[9],
                ),
                widget.CurrentLayoutIcon(scale=0.5),
                widget.Prompt(),
                # widget.WindowName(format='{state}', max_chars=10),
                widget.Chord(
                    chords_colors={
                        'launch': ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                # widget.TextBox("default config", name="default"),
                # widget.TextBox("Press &lt;M-r&gt; to spawn", foreground="#d75f5f"),
                widget.Spacer(),
                widget.Mpris2(
                    name='spotify',
                   objname='org.mpris.MediaPlayer2.spotify',
                    display_metadata=['xesam:title', 'xesam:artist'],
                    scroll_interval=0,
                    scroll_wait_intervals=10000,
                    scroll_chars=10,
                    foreground= colors[4],
                ),
                widget.TextBox(
                    text='',
                    foreground= colors[4],
                    mouse_callbacks={
                        'Button1': lambda: qtile.cmd_spawn('playerctl previous')
                        }
                    ),
                widget.TextBox(
                    text='  ',
                    foreground= colors[4],
                    mouse_callbacks={
                        'Button1': lambda: qtile.cmd_spawn('playerctl -a play-pause') 
                        }
                    ),
                widget.TextBox(
                    text='',
                    foreground= colors[4],
                    mouse_callbacks={
                        'Button1': lambda: qtile.cmd_spawn('playerctl next')
                        }
                    ),
                widget.TextBox(text='CPU:', foreground=colors[6]),
                widget.CPU(
                    foreground=colors[6], 
                    format='{freq_current} GHz {load_percent}%'
                ),
                widget.TextBox(text='RAM:', foreground=colors[8]),
                widget.Memory(
                    foreground=colors[8],
                    format='{MemUsed: .0f}{mm} {MemPercent}%'
                ),
                widget.TextBox(text='', foreground=colors[5]),
                widget.Volume(foreground=colors[5]),
                widget.TextBox(text='', foreground=colors[7]),
                widget.Battery(format='{char} {percent:2.0%} W', foreground=colors[7], charge_char='', discharge_char='', full_char=''),

                widget.Clock(format='%a, %B %d | %I:%M:%S %p', foreground=colors[3]),
                widget.Systray(background='#4b5162'),
                # widget.QuickExit(),
            ],
            24, margin = [0, 0, 4, 0],
        ),
        bottom=bar.Gap(4),
        left=bar.Gap(4),
        right=bar.Gap(4),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    *layout.Floating.default_float_rules,
    Match(wm_class='confirmreset'),  # gitk
    Match(wm_class='makebranch'),  # gitk
    Match(wm_class='maketag'),  # gitk
    Match(wm_class='ssh-askpass'),  # ssh-askpass
    Match(title='branchdialog'),  # gitk
    Match(title='pinentry'),  # GPG key password entry
])
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"

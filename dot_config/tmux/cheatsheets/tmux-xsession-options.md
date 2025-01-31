# By default, tmux `<prefix>` key needs to pressed before `<mykey>` to launch
# sessionx. In case you just want to bind '<mykey>' without the tmux '<prefix>'
# add the following line to turn the prefix off. This option is set to
# on by defaut.
set -g @sessionx-prefix off

# `C-x` is customizeable, by default it indexes directories in `$HOME/.config`,
# but this can be changed by adding the config below.
# e.g. set -g @sessionx-x-path '~/dotfiles'
set -g @sessionx-x-path '<some-path>'

# A comma delimited absolute-paths list of custom paths
# always visible in results and ready to create a session from.
# Tip: if you're using zoxide mode, there's a good chance this is redundant
set -g @sessionx-custom-paths '/Users/me/projects,/Users/me/second-brain'

# A boolean flag, if set to true, will also display subdirectories
# under the aforementioned custom paths, e.g. /Users/me/projects/tmux-sessionx
set -g @sessionx-custom-paths-subdirectories 'false'

# Uses `fzf --tmux` instead of the `fzf-tmux` script (requires fzf >= 0.53).
set -g @sessionx-fzf-builtin-tmux 'on'

# By default, the current session will not be shown on first view
# This is to support quick switch of sessions
# Only after other actions (e.g. rename) will the current session appear
# Setting this option to 'false' changes this default behavior
set -g @sessionx-filter-current 'false'

# Window mode can be turned on so that the default layout
# Has all the windows listed rather than sessions only
set -g @sessionx-window-mode 'on'

# Tree mode can be enabled which means that instead of a preview,
# a hierarchy of sessions and windows will be shown
set -g @sessionx-tree-mode 'on'

# Preview location and screenspace can be adjusted with these
# Reminder: it can be toggled on/off with `?`
set -g @sessionx-preview-location 'right'
set -g @sessionx-preview-ratio '55%'

# The preview can also be disabled altogether
set -g @sessionx-preview-enabled 'false'

# Change window dimensions
set -g @sessionx-window-height '90%'
set -g @sessionx-window-width '75%'

# If you want change the layout to top you can set
set -g @sessionx-layout 'reverse'

# If you want to change the prompt, the space is needed to not overlap the icon
set -g @sessionx-prompt " "

# If you want to change the pointer
set -g @sessionx-pointer "▶ "

# Customize `ls` command to display your directories nicely (default: `ls`)
# Can be used with `exa`, `lsd`, or other command of your choice to
# set preview window to match your preference
set -g @sessionx-ls-command 'lsd --tree --color=always --icon=always'

# When set to 'on' a non-result will be sent to zoxide for path matching
# Requires zoxide installed
set -g @sessionx-zoxide-mode 'on'

# If you want to pass in your own FZF options. This is passed in before all other
# arguments to FZF to ensure that other options like `sessionx-pointer` and
# `sessionx-window-height/width` still work. See `man fzf` for config options.
set -g @sessionx-additional-options "--color pointer:9,spinner:92,marker:46"

# If you're running fzf lower than 0.35.0 there are a few missing features
# Upgrade, or use this setting for support
set -g @sessionx-legacy-fzf-support 'on'

# With Tmuxinator turned 'on' (off by default), the plugin will take a given name
# and look for a tmuxinator project with that name.
# If found, it'll launch the template using tmuxinator
set -g @sessionx-tmuxinator-mode 'off'

# Turn on fzf-marks (default: off) mode to launch a new session from your marks
set -g @sessionx-fzf-marks-mode 'off'

# If you want to filter sessions, use a comma separated list of session names
# e.g. set -g @sessionx-filtered-sessions 'scratch,somesession'
# This will filter out sessions that contain 'scratch' (used by tmux-floax)
# and 'somesession'
set -g @sessionx-filtered-sessions 'scratch,somesession'

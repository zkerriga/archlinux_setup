#!/bin/zsh
i3-msg "workspace 1; append_layout ~/.i3/workspace-1.json"

(firefox &)
(telegram-desktop &)
(urxvt &)

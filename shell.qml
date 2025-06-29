//@ pragma IconTheme Adwaita-Dalton

import Quickshell
import Quickshell.Wayland
import QtQuick
import "widgets"
import "widgets/bar"
import "widgets/drawers" as Drawers
import "widgets/launcher"
import "widgets/notifications"
import "config"
import "services" as Services

ShellRoot {
    Bar {}
    Launcher {}
    Notifications {}
    Drawers.Wrapper {}

    // Helpers
    BlurWindow {}

    // Config
    Keymaps {}
}

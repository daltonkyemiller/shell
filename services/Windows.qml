pragma ComponentBehavior: Bound
pragma Singleton

import Quickshell
import QtQuick
import Quickshell.Hyprland
import Quickshell.Io

Singleton {
    id: root
    property var focusWindowAddress
    property var orderedToplevels: {
        const ordered = [...Hyprland.toplevels.values].sort((a, b) => {
            return a.workspace.id - b.workspace.id;
        });
        return ordered;
    }

    Timer {
        id: timer
        interval: 800
        running: false
        repeat: false
        onTriggered: {
            Visibilities.setPopupState(Visibilities.Popup.Windows, false);
        }
    }

    function open() {
        timer.start();
        Visibilities.setPopupState(Visibilities.Popup.Windows, true);
    }

    Process {
        id: focus_window
        running: false
        command: ["hyprctl", "dispatch", "focuswindow", "address:0x" + root.focusWindowAddress]
    }

    function getCurrentFocusedWindowAddr() {
        const idx = root.orderedToplevels.findIndex(tl => tl.activated);
        const topLevel = root.orderedToplevels[idx];

        return {
            idx,
            topLevel
        };
    }

    function move(dir) {
        timer.stop();

        const {
            idx,
            topLevel
        } = getCurrentFocusedWindowAddr();

        const nexIdx = dir === 1 ? (idx + dir) % root.orderedToplevels.length : (idx + dir + root.orderedToplevels.length) % root.orderedToplevels.length;
        const nextFocusedWindow = root.orderedToplevels[nexIdx];
        root.focusWindowAddress = nextFocusedWindow.address;
        focus_window.running = true;

        timer.start();
    }
}

import Quickshell
import QtQuick
import Quickshell.Io
import qs.components
import qs.services

Scope {
    Shortcut {
        name: "toggle-app-launcher"
        onPressed: {
            Visibilities.setPopupState(Visibilities.Popup.Launcher, p => !p);
        }
    }

    Shortcut {
        name: "toggle-windows"
        onPressed: {
            Visibilities.setPopupState(Visibilities.Popup.Windows, p => !p);
        }
    }

    Shortcut {
        name: "toggle-clipboard-history"
        onPressed: {
            Launcher.query = "c:";
            Visibilities.setPopupState(Visibilities.Popup.Launcher, p => !p);
        }
    }

    Shortcut {
        name: "toggle-left-drawer"
        onPressed: {
            Visibilities.setDrawerState(Visibilities.Drawer.Left, p => !p);
        }
    }

    Shortcut {
        name: "toggle-right-drawer"
        onPressed: {
            Visibilities.setDrawerState(Visibilities.Drawer.Right, p => !p);
        }
    }

    Shortcut {
        name: "toggle-recording-indicator"
        onPressed: {
            Visibilities.setIndicatorState(Visibilities.Indicator.Recording, p => !p);
        }
    }
}

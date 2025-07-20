import QtQuick
import Quickshell
import qs.components as UI
import qs.services as Services

Item {
    id: root
    implicitHeight: parent.height
    implicitWidth: childrenRect.width

    UI.StyledText {
        id: text
        // anchors.centerIn: parent
        padding: 10
        // x: (width + 20) / 2 - implicitWidth / 2
        // y: parent.height / 2 - implicitHeight / 2
        width: Math.min(text.implicitWidth, 300)
        text: Services.Hyprland.activeClient?.title || "No active window"
        elide: Text.ElideRight
        // wrapMode: Text.Wrap
    }
}

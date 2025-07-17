pragma ComponentBehavior: Bound

import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import "../../services" as Services
import "../../config" as Config

PanelWindow {
    id: root
    color: Config.Theme.colors.bg

    exclusionMode: ExclusionMode.Ignore
    WlrLayershell.layer: WlrLayer.Overlay

    anchors.left: true
    anchors.right: true
    anchors.top: true
    anchors.bottom: true

    mask: Region {}

    property var toplevels: ToplevelManager.toplevels.values

    ListView {
        id: windows
        // orientation: ListView.Horizontal
        implicitWidth: childrenRect.width
        implicitHeight: childrenRect.height
        anchors.centerIn: parent
        spacing: 10
        model: ScriptModel {
            values: root.toplevels.map(t => ({
                        title: t.title
                    }))
        }

        displaced: Transition {
            NumberAnimation {
                property: "y"
                duration: 300

                easing.type: Easing.BezierSpline
                easing.bezierCurve: Config.Animation.anim.curves.standard
            }
        }

        delegate: Item {
            id: delegate
            required property var modelData
            required property int index
            property Toplevel toplevel: root.toplevels[index]
            property ShellScreen screen: toplevel.screens[0]
            implicitWidth: (screen.width / root.toplevels.length) - 50
            implicitHeight: (screen.height / root.toplevels.length) - 50
            Behavior on scale {
                NumberAnimation {
                    duration: 300
                    easing.type: Easing.BezierSpline
                    easing.bezierCurve: Config.Animation.anim.curves.standard
                }
            }
            scale: toplevel.activated ? 1 : 0.9

            ScreencopyView {
                id: preview
                anchors.fill: parent

                captureSource: toplevel
                live: true
            }
            Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.color: Config.Theme.colors.border
                border.width: Config.Theme.style.borderWidth
            }
        }
    }
}

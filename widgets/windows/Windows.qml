pragma ComponentBehavior: Bound

import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland
import QtQuick
import qs.services as Services
import qs.config as Config
import qs.components as Components

LazyLoader {
    activeAsync: Services.Visibilities.popups[Services.Visibilities.Popup.Windows]

    Item {

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

            property var toplevels: Services.Windows.orderedToplevels
            property real previewHeight: root.height * 0.2

            ListView {
                id: windows
                orientation: ListView.Horizontal
                width: Math.min(contentWidth, root.width * 0.95)
                height: root.previewHeight
                anchors.centerIn: parent
                spacing: 20
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
                    property var toplevel: root.toplevels[index]
                    property real windowAspectRatio: toplevel.appidGtk ? (toplevel.size.width / toplevel.wayland.size.height) : 1.77
                    implicitHeight: windows.height
                    implicitWidth: implicitHeight * windowAspectRatio
                    Behavior on scale {
                        NumberAnimation {
                            duration: 300
                            easing.type: Easing.BezierSpline
                            easing.bezierCurve: Config.Animation.anim.curves.standard
                        }
                    }
                    scale: toplevel.activated ? 1.1 : 0.9

                    Rectangle {
                        anchors.fill: parent
                        color: Config.Theme.colors.bgOpaque
                        border.color: Config.Theme.colors.border
                        border.width: delegate.toplevel.activated ? Config.Theme.style.borderWidth + 2 : Config.Theme.style.borderWidth
                        radius: Config.Theme.style.radius.md
                        clip: true

                        ScreencopyView {
                            id: preview
                            anchors.fill: parent
                            anchors.margins: Config.Theme.style.borderWidth + 10

                            captureSource: delegate.toplevel.wayland
                            live: true
                        }

                        Rectangle {
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.bottom: parent.bottom
                            height: 60
                            gradient: Gradient {
                                GradientStop {
                                    position: 0.0
                                    color: "transparent"
                                }
                                GradientStop {
                                    position: 0.5
                                    color: Qt.rgba(0, 0, 0, 0.5)
                                }
                                GradientStop {
                                    position: 1.0
                                    color: Qt.rgba(0, 0, 0, 0.7)
                                }
                            }

                            Components.StyledText {
                                id: name
                                text: delegate.toplevel.title
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.bottom: parent.bottom
                                anchors.margins: 10
                                anchors.bottomMargin: -20
                                font.pixelSize: 18
                                elide: Text.ElideRight
                                y: -1000
                                opacity: 0

                                Component.onCompleted: entry.start()

                                ParallelAnimation {
                                    id: entry
                                    NumberAnimation {
                                        target: name
                                        property: "anchors.bottomMargin"
                                        from: -20
                                        to: 10
                                        duration: 400
                                        easing.type: Config.Animation.anim.easing
                                    }

                                    NumberAnimation {
                                        target: name
                                        property: "opacity"
                                        from: 0
                                        to: 1
                                        duration: 400
                                        easing.type: Config.Animation.anim.easing
                                    }
                                }
                            }
                        }
                        Behavior on border.width {
                            NumberAnimation {
                                duration: 300
                                easing.type: Easing.BezierSpline
                                easing.bezierCurve: Config.Animation.anim.curves.standard
                            }
                        }
                    }
                }
            }
        }
    }
}

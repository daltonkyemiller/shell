import QtQuick
import QtQuick.Controls
import Quickshell
import Quickshell.Services.SystemTray
import qs.config as Config

Item {
    id: root
    implicitWidth: trayRow.width
    implicitHeight: trayRow.height

    Row {
        id: trayRow
        spacing: 6

        Repeater {
            model: SystemTray.items

            delegate: Item {
                id: trayItemDelegate
                required property SystemTrayItem modelData

                width: Config.Theme.style.iconSizes.xs
                height: Config.Theme.style.iconSizes.xs

                // Icon display
                Image {
                    id: trayIcon
                    anchors.fill: parent
                    source: modelData.icon || ""
                    fillMode: Image.PreserveAspectFit
                    smooth: true
                }

                // Tooltip
                ToolTip {
                    id: tooltip
                    visible: mouseArea.containsMouse
                    text: modelData.tooltip || modelData.title || ""
                    delay: 500
                }

                // Mouse interaction
                MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    acceptedButtons: Qt.LeftButton | Qt.RightButton

                    onClicked: (mouse) => {
                        if (mouse.button === Qt.LeftButton) {
                            // Primary activation (left click)
                            modelData.activate();
                        } else if (mouse.button === Qt.RightButton) {
                            // Secondary activation (right click)
                            modelData.secondaryActivate();
                        }
                    }

                    onWheel: (wheel) => {
                        if (modelData.scroll) {
                            modelData.scroll(wheel.angleDelta.y);
                        }
                    }
                }
            }
        }
    }
}

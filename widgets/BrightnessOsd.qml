pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import QtQuick.VectorImage
import Quickshell
import Quickshell.Widgets
import qs.config as Config
import qs.components as UI
import qs.services as Services

Scope {
    id: root

    property bool shouldShowOsd: false

    // Listen for brightness changes from the service
    Connections {
        target: Services.Brightness

        function onBrightnessChanged(brightness) {
            console.log("BrightnessOsd received signal, brightness:", brightness);
            root.shouldShowOsd = true;
            hideTimer.restart();
        }
    }

    Timer {
        id: hideTimer
        interval: 1000
        onTriggered: root.shouldShowOsd = false
    }

    // The OSD window will be created and destroyed based on shouldShowOsd.
    LazyLoader {
        active: root.shouldShowOsd

        PanelWindow {
            anchors.bottom: true
            margins.bottom: screen.height / 5
            exclusiveZone: 0

            implicitWidth: 400
            implicitHeight: 50
            color: "transparent"

            // An empty click mask prevents the window from blocking mouse events.
            mask: Region {}

            Rectangle {
                anchors.fill: parent
                radius: Config.Theme.style.radius.lg
                color: Config.Theme.colors.bg

                RowLayout {
                    anchors {
                        fill: parent
                        leftMargin: 15
                        rightMargin: 15
                    }
                    spacing: 10

                    VectorImage {
                        implicitHeight: Config.Theme.style.iconSizes.md
                        implicitWidth: Config.Theme.style.iconSizes.md

                        source: {
                            const brightness = Services.Brightness.currentBrightness || 0
                            
                            if (brightness < 0.5) return "../icons/18px_brightness-decrease.svg"
                            return "../icons/18px_brightness-increase.svg"
                        }
                    }

                    Rectangle {
                        Layout.fillWidth: true
                        implicitHeight: 8
                        radius: Config.Theme.style.radius.sm
                        color: Config.Theme.colors.border

                        Rectangle {
                            anchors {
                                left: parent.left
                                top: parent.top
                                bottom: parent.bottom
                            }

                            implicitWidth: parent.width * Math.min(1.0, Services.Brightness.currentBrightness || 0)
                            radius: parent.radius
                            color: Config.Theme.colors.fg
                        }
                    }

                    UI.StyledText {
                        text: Math.round((Services.Brightness.currentBrightness || 0) * 100) + "%"
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }
        }
    }
}
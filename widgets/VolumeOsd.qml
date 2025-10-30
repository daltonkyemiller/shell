pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import QtQuick.VectorImage
import Quickshell
import Quickshell.Services.Pipewire
import qs.config as Config
import qs.components as UI

Scope {
    id: root

    // Bind the pipewire node so its volume will be tracked
    PwObjectTracker {
        objects: [Pipewire.defaultAudioSink]
    }

    Connections {
        target: Pipewire.defaultAudioSink?.audio

        function onVolumeChanged() {
            root.shouldShowOsd = true;
            hideTimer.restart();
        }

        function onMutedChanged() {
            root.shouldShowOsd = true;
            hideTimer.restart();
        }
    }

    property bool shouldShowOsd: false

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
                            const audio = Pipewire.defaultAudioSink?.audio;
                            const volume = audio?.volume ?? 0;
                            const muted = audio?.muted ?? false;

                            if (muted || volume === 0)
                                return "../icons/18px_volume-off.svg";
                            if (volume < 0.33)
                                return "../icons/18px_volume.svg";
                            if (volume < 0.66)
                                return "../icons/18px_volume-down.svg";
                            return "../icons/18px_volume-up.svg";
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

                            Behavior on implicitWidth {
                                NumberAnimation {
                                    duration: 200
                                    easing.type: Easing.BezierSpline
                                    easing.bezierCurve: Config.Animation.anim.curves.emphasized
                                }
                            }

                            implicitWidth: parent.width * Math.min(1.0, (Pipewire.defaultAudioSink?.audio.volume ?? 0))
                            radius: parent.radius
                            color: Config.Theme.colors.fg
                        }
                    }

                    UI.StyledText {
                        text: {
                            const audio = Pipewire.defaultAudioSink?.audio;
                            const volume = audio?.volume ?? 0;
                            const muted = audio?.muted ?? false;

                            if (muted)
                                return "Muted";
                            return Math.round(volume * 100) + "%";
                        }
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }
            }
        }
    }
}

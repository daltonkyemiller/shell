pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import QtQuick.Window
import Quickshell
import Quickshell.Wayland
import Quickshell.Widgets

import qs.config as Config
import qs.services as Services

LazyLoader {
    activeAsync: Services.Visibilities.popups[Services.Visibilities.Popup.Launcher]
    onActiveChanged: {
        Services.Launcher.onVisibleChanged(active);
    }

    PanelWindow {
        id: root

        property var items: Services.Launcher.results
        property int selectedIndex: 0

        onItemsChanged: {
            selectedIndex = 0;
        }

        WlrLayershell.namespace: "dkm_blur_ignorealpha"
        WlrLayershell.layer: WlrLayer.Overlay
        // HyprlandWindow.opacity: 0.9

        color: "transparent"

        anchors {
            top: true
            left: true
            right: true
            bottom: true
        }
        exclusionMode: ExclusionMode.Ignore

        visible: Services.Visibilities.popups[Services.Visibilities.Popup.Launcher]

        Connections {
            target: Services.Visibilities
            function onPopupStateChanged(name, value) {
                if (name !== Services.Visibilities.Popup.Launcher) {
                    return;
                }
                if (value) {
                    return;
                }
                Services.Launcher.query = "";
                exitAnimation.start();
            }
        }
        focusable: true

        ClippingRectangle {
            id: launcherContent
            anchors.centerIn: parent
            opacity: 0

            implicitHeight: !Services.Launcher.query ? 50 : 500
            implicitWidth: 500
            border.color: Config.Theme.colors.border
            border.width: Config.Theme.style.borderWidth
            color: Config.Theme.colors.bg
            clip: true
            radius: Config.Theme.style.radius.md

            ParallelAnimation {
                id: enterAnimation
                running: true

                NumberAnimation {
                    target: launcherContent
                    property: "scale"
                    from: 0.5
                    to: 1
                    duration: 500
                    easing.type: Easing.BezierSpline
                    easing.bezierCurve: Config.Animation.anim.curves.standard
                }

                NumberAnimation {
                    target: launcherContent
                    property: "anchors.verticalCenterOffset"
                    from: 200
                    to: 0
                    duration: 500
                    easing.type: Easing.BezierSpline
                    easing.bezierCurve: Config.Animation.anim.curves.standard
                }

                NumberAnimation {
                    target: launcherContent
                    property: "opacity"
                    from: 0
                    to: 1
                    duration: 300
                    easing.type: Easing.BezierSpline
                    easing.bezierCurve: Config.Animation.anim.curves.standard
                }
            }

            ParallelAnimation {
                id: exitAnimation
                NumberAnimation {
                    target: launcherContent
                    property: "scale"
                    from: 1
                    to: 0.5
                    duration: 200
                    easing.type: Easing.BezierSpline
                    easing.bezierCurve: Config.Animation.anim.curves.standard
                }

                NumberAnimation {
                    target: launcherContent
                    property: "opacity"
                    from: 1
                    to: 0
                    duration: 150
                    easing.type: Easing.BezierSpline
                    easing.bezierCurve: Config.Animation.anim.curves.standard
                }

                onFinished: {
                    root.visible = false;
                }
            }

            Behavior on implicitHeight {
                NumberAnimation {
                    duration: 250
                    easing.type: Easing.BezierSpline
                    easing.bezierCurve: Config.Animation.anim.curves.standard
                }
            }

            LauncherInput {
                id: input
                items: root.items
                selectedIndex: root.selectedIndex
                onSelectedIndexChanged: root.selectedIndex = selectedIndex
            }

            Rectangle {
                y: input.height
                height: Config.Theme.style.borderWidth
                width: parent.width
                color: Config.Theme.colors.border
            }

            ListView {
                id: app_list
                y: input.height
                implicitWidth: parent.width
                implicitHeight: parent.height - input.height
                clip: true
                model: ScriptModel {
                    values: root.items
                }

                // cacheBuffer: QsWindow.window?.screen.height ?? 0
                orientation: ListView.Vertical
                flickableDirection: Flickable.VerticalFlick
                boundsBehavior: Flickable.StopAtBounds
                currentIndex: root.selectedIndex
                highlightFollowsCurrentItem: false
                onCurrentIndexChanged: {
                    app_list.positionViewAtIndex(root.selectedIndex, ListView.Center);
                }

                add: Transition {
                    SequentialAnimation {
                        PropertyAction {
                            property: "opacity"
                            value: 0
                        }

                        ParallelAnimation {
                            // PauseAnimation {}
                            NumberAnimation {
                                property: "opacity"
                                from: 0
                                to: 1
                                duration: 200
                            }
                            NumberAnimation {
                                property: "scale"
                                from: 0.5
                                to: 1
                                duration: 200

                                easing.type: Easing.BezierSpline
                                easing.bezierCurve: Config.Animation.anim.curves.standard
                            }
                        }
                    }
                }
                remove: Transition {
                    NumberAnimation {
                        property: "opacity"
                        from: 1
                        to: 0
                        duration: 200
                    }
                }

                displaced: Transition {
                    PropertyAction {
                        properties: "scale, opacity"
                        value: 1
                    }
                    NumberAnimation {
                        property: "y"
                        duration: 300

                        easing.type: Easing.BezierSpline
                        easing.bezierCurve: Config.Animation.anim.curves.standard
                    }
                }

                // Add a vertical scrollbar
                ScrollBar.vertical: ScrollBar {
                    active: true // Always show scrollbar when content overflows
                    policy: ScrollBar.AsNeeded
                }

                delegate: LauncherItem {
                    selected: root.selectedIndex === index
                }
            }
        }
    }
}

pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import qs.services
import qs.config

Item {
    visible: Media.mainPlayer?.isPlaying
    id: root
    width: 25
    height: 25
    property real multiplier: 0.2
    property real spacing: 1
    property real minBarHeight: 2

    Row {
        id: visualizerLayout
        anchors.fill: parent
        spacing: root.spacing

        Repeater {
            model: Cava.values.length

            Item {
                required property int index
                width: visualizerLayout.width / Cava.values.length - 1
                height: parent.height
                
                property real barHeight: Math.max(root.minBarHeight, Cava.values[index] * root.multiplier)
                property real barOpacity: Math.min(1, Math.max(0.6, 0.6 + (barHeight / parent.height) * 0.4))
                
                // Top bar (grows up from center)
                Rectangle {
                    opacity: parent.barOpacity
                    color: Theme.colors.fg
                    width: parent.width
                    height: parent.barHeight / 2
                    anchors.bottom: parent.verticalCenter
                }
                
                // Bottom bar (grows down from center)
                Rectangle {
                    opacity: parent.barOpacity
                    color: Theme.colors.fg
                    width: parent.width
                    height: parent.barHeight / 2
                    anchors.top: parent.verticalCenter
                }
            }
        }
    }
}

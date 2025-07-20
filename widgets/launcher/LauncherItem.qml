pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import Quickshell
import qs.components as UI
import qs.config as Config

Item {
    id: root
    required property var modelData
    required property int index
    required property bool selected
    property alias button: button

    property string iconPath: {
        if (root.modelData.icon) {
            if (root.modelData.icon.startsWith("file://")) {
                return root.modelData.icon;
            }
            const icon = Quickshell.iconPath(root.modelData.icon, true);
            return icon;
        }
        return "";
    }

    implicitWidth: parent?.width || 0
    implicitHeight: 50
    clip: true

    property alias row: row

    Button {
        id: button
        implicitWidth: parent.width
        implicitHeight: parent.height
        flat: true
        highlighted: root.selected

        Row {
            id: row
            anchors.verticalCenter: parent.verticalCenter
            spacing: 8
            x: 20
            transformOrigin: Item.Left

            Image {
                anchors.verticalCenter: parent.verticalCenter
                visible: root.iconPath !== ""
                width: 30
                height: 30
                source: root.iconPath
            }

            UI.StyledText {
                anchors.verticalCenter: parent.verticalCenter
                visible: root.iconPath === ""
                text: root.modelData.icon
                font.weight: Font.Medium
                font.pixelSize: 30

            }

            Column {
                anchors.verticalCenter: parent.verticalCenter
                spacing: 2

                UI.StyledText {
                    text: root.modelData.title
                    font.weight: Font.Medium
                }

                UI.StyledText {
                    text: root.modelData.subtitle || ""
                    color: Config.Theme.colors.muted
                    font.pixelSize: 12
                    visible: text !== ""
                }
            }
        }
    }
}

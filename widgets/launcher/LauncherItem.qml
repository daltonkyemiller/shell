pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import QtQuick.VectorImage
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
            if (root.modelData.icon.startsWith("vector-image://")) {
                return root.modelData.icon;
            }
            const systemIcon = Quickshell.iconPath(root.modelData.icon, true);

            if (!systemIcon) {
                return "";
            }

            return systemIcon;
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
                visible: root.iconPath !== "" && !root.iconPath.startsWith("vector-image://")
                width: 30
                height: 30
                source: root.iconPath
            }

            VectorImage {
                anchors.verticalCenter: parent.verticalCenter
                visible: root.iconPath.startsWith("vector-image://")
                preferredRendererType: VectorImage.CurveRenderer
                source: {
                    const iconName = root.iconPath.match(/vector-image:\/\/([^.]+)(?:\.svg)?/)[1];
                    return `../../icons/${iconName}.svg`;
                }

                width: 25
                height: 25
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
                    width: root.width - 75
                    font.weight: Font.Medium
                    elide: Text.ElideRight
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

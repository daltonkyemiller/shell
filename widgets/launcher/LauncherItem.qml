import QtQuick
import QtQuick.Controls
import Quickshell
import "../../components" as UI
import "../../config" as Config

Item {
    id: root
    required property var modelData
    required property int index
    required property bool selected
    property alias button: button

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
                width: 30
                height: 30
                anchors.verticalCenter: parent.verticalCenter
                source: {
                    if (root.modelData.icon) {
                        if (root.modelData.icon.startsWith("file://")) {
                            return root.modelData.icon;
                        }
                        return Quickshell.iconPath(root.modelData.icon);
                    }
                    return "";
                }
                
                Rectangle {
                    anchors.fill: parent
                    color: Config.Theme.colors.muted
                    radius: 4
                    visible: parent.status === Image.Error || !root.modelData.icon
                    
                    UI.StyledText {
                        anchors.centerIn: parent
                        text: root.modelData.type === "clipboard" ? "📋" : "📱"
                        font.pixelSize: 16
                    }
                }
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

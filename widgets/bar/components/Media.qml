import QtQuick
import QtQuick.Controls
import QtQuick.Effects
import Quickshell
import Quickshell.Services.Mpris as MpriService
import Quickshell.Widgets
import qs.config as Config
import qs.components as UI
import qs.services as Services

Row {
    id: root
    spacing: 10

    required property PanelWindow window

    ClippingRectangle {
        width: 25
        height: 25
        radius: Config.Theme.style.radius.sm
        anchors.verticalCenter: parent.verticalCenter
        visible: !!Services.Media.title && Services.Media.mainPlayer?.trackArtUrl
        Image {
            id: art
            anchors.fill: parent
            fillMode: Image.PreserveAspectCrop
            source: Services.Media.mainPlayer?.trackArtUrl || ""
        }
    }

    Item {
        width: Math.min(title.implicitWidth, 400)
        height: title.implicitHeight
        anchors.verticalCenter: parent.verticalCenter
        clip: true

        UI.StyledText {
            id: title
            anchors.verticalCenter: parent.verticalCenter
            elide: Text.ElideNone
            text: Services.Media.title || "Nothing playing"

            property bool shouldScroll: implicitWidth > 400
            
            SequentialAnimation {
                running: title.shouldScroll
                loops: Animation.Infinite
                
                // PauseAnimation { duration: 200 }
                NumberAnimation {
                    target: title
                    property: "x"
                    from: 0
                    to: -title.implicitWidth - 50
                    duration: Math.max(3000, (title.implicitWidth + 50) * 15)
                    easing.type: Config.Animation.easing.standard
                }
                PropertyAction {
                    target: title
                    property: "x"
                    value: 0
                }
            }
            
            onTextChanged: x = 0
        }

        UI.StyledText {
            id: titleDupe
            anchors.verticalCenter: parent.verticalCenter
            elide: Text.ElideNone
            text: title.text
            x: title.x + title.implicitWidth + 50
            visible: title.shouldScroll
        }
    }

    CavaVisualizer {
        anchors.verticalCenter: parent.verticalCenter
    }

    MouseArea {
        width: 18
        height: 18
        visible: !!Services.Media.title
        anchors.verticalCenter: parent.verticalCenter
        onClicked: Services.Media.mainPlayer.togglePlaying()
        
        Image {
            anchors.fill: parent
            source: Services.Media.mainPlayer?.isPlaying ? "../../../icons/18px_media-pause.svg" : "../../../icons/18px_media-play.svg"
        }
    }

}

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

    UI.StyledText {
        id: title
        width: Math.min(title.implicitWidth, 400)
        anchors.verticalCenter: parent.verticalCenter
        elide: Text.ElideRight
        text: Services.Media.title || "Nothing playing"
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

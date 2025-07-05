import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Quickshell
import Quickshell.Widgets
import "../../components" as UI
import "../../config" as Config
import "../../services" as Services

Item {
    id: root
    required property var items
    required property int selectedIndex

    property var provider: Services.Launcher.parsedQuery.provider
    property string prefix: Services.Launcher.parsedQuery.prefix
    property string query: Services.Launcher.parsedQuery.query

    activeFocusOnTab: true
    implicitHeight: 50
    implicitWidth: 500

    Text {
        id: measurePrefix
        visible: false
        text: root.prefix ? `${root.prefix}:` : ""
    }

    UI.StyledText {
        anchors.verticalCenter: parent.verticalCenter
        leftPadding: 10
        visible: !input.text
        text: "Search..."
        color: Config.Theme.colors.muted
    }

    RowLayout {
        anchors.fill: parent
        anchors.margins: 10
        ClippingWrapperRectangle {
            visible: !!root.provider
            topMargin: 5
            bottomMargin: 5
            leftMargin: 5
            rightMargin: 5

            radius: Config.Theme.style.radius.md
            color: Config.Theme.colors.bg
            border.color: Config.Theme.colors.border
            border.width: Config.Theme.style.borderWidth
            UI.StyledText {
                anchors.centerIn: parent
                text: root.provider ? root.provider.name : ""
                color: Config.Theme.colors.fg
            }
        }

        ClippingRectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "transparent"

            UI.StyledTextInput {
                id: input
                x: -measurePrefix.width
                y: parent.height / 2 - implicitHeight / 2
                activeFocusOnTab: root.activeFocusOnTab
                focus: true
                text: Services.Launcher.query
                onTextChanged: {
                    Services.Launcher.query = text;
                }
                Keys.onPressed: event => {
                    if (event.key === Qt.Key_Up && root.items.length > 0) {
                        if (root.selectedIndex === 0) {
                            root.selectedIndex = root.items.length - 1;
                            return;
                        }
                        root.selectedIndex--;
                    }
                    if (event.key === Qt.Key_Down && root.items.length > 0) {
                        if (root.selectedIndex === root.items.length - 1) {
                            root.selectedIndex = 0;
                            return;
                        }
                        root.selectedIndex++;
                    }

                    if (event.key === Qt.Key_Return && root.items.length > 0) {
                        const item = root.items[root.selectedIndex];
                        if (item) {
                            Services.Launcher.execute(item);
                            Services.Visibilities.setPopupState(Services.Visibilities.Popup.Launcher, false);
                        }
                    }

                    if (event.key === Qt.Key_Escape) {
                        Services.Visibilities.setPopupState(Services.Visibilities.Popup.Launcher, false);
                    }

                    // Delete prefix on backspace if there is one without a query
                    if (event.key === Qt.Key_Backspace) {
                        if (root.prefix && !root.query) {
                            Services.Launcher.query = "";
                        }
                    }
                }
            }
        }
    }
}

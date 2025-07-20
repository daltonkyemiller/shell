import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Quickshell
import Quickshell.Widgets
import qs.components as UI
import qs.config as Config
import qs.services as Services

Item {
    id: root
    required property var items
    required property int selectedIndex

    property var plugin: Services.Launcher.parsedQuery.plugin
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
            visible: !!root.plugin && root.prefix
            topMargin: 5
            bottomMargin: 5
            leftMargin: 5
            rightMargin: 5

            radius: Config.Theme.style.radius.md
            color: Config.Theme.colors.bg
            border.color: Config.Theme.colors.border
            border.width: Config.Theme.style.borderWidth
            RowLayout {
                UI.AppIcon {
                    visible: root.plugin?.icon
                    Layout.alignment: Qt.AlignVCenter
                    implicitHeight: Config.Theme.style.iconSizes.xs
                    implicitWidth: Config.Theme.style.iconSizes.xs
                    // anchors.centerIn: parent
                    icon.name: root.plugin ? root.plugin.icon : ""
                }
                UI.StyledText {
                    Layout.alignment: Qt.AlignVCenter
                    text: root.plugin ? root.plugin.name : ""
                    color: Config.Theme.colors.fg
                }
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
                onSelectionStartChanged: {
                    if (!root.prefix) {
                        return;
                    }
                    const prefixLength = root.prefix.length + 1;
                    // Select everything but the prefix
                    if (selectionStart === 0) {
                        input.select(prefixLength, input.length);
                    }
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

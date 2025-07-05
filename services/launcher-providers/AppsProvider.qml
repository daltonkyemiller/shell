pragma Singleton

import QtQuick
import Quickshell
import ".." as Services

Singleton {
    id: root

    property var prefixes: [""]
    property string name: "Applications"

    function search(query) {
        return Services.Apps.fuzzySearch(query).map(app => ({
                    type: "app",
                    title: app.name,
                    subtitle: app.comment || "",
                    icon: app.icon,
                    data: app
                }));
    }

    function execute(item) {
        Services.Apps.launch(item.data);
    }
}

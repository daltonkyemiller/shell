pragma Singleton

import QtQuick
import Quickshell.Io
import Quickshell

Singleton {
    id: root

    property var prefixes: ["t"]
    property string name: "Test"

    function search(query) {
        return [];
    }

    function execute(item) {
        console.log("did it");
    }
}

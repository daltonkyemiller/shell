pragma Singleton

import Quickshell
import QtQuick
import Quickshell.Io

Singleton {
    id: root
    property list<string> clipboardItems: []

    Process {
        id: getClipbord
        running: true
        command: ["cliphist", "list"]
        stdout: SplitParser {
            onRead: line => {
                console.log("lin");
                console.log(line);
            }
        }
    }
}

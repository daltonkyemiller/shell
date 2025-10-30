pragma Singleton

import QtQuick
import Quickshell.Io
import Quickshell
import "../../launcher"

Plugin {
    id: root
    name: "Clipboard"
    description: "Search for clipboard entries"
    // icon: "edit-copy"
    prefixes: ["clip", "c"]

    property string query: ""
    property var results: []
    property var searched: results.filter(res => {
        if (!query) {
            return true;
        }
        return res.title.toLowerCase().includes(query.toLowerCase());
    })

    function search(query) {
        root.query = query;

        return searched;
    }

    function onVisibleChanged(visible) {
        if (visible) {
            clipProcess.running = true;
        }
    }

    function execute(item) {
        copyProcess.text = item.data;
        copyProcess.running = true;
    }

    property var clipProcess: Process {
        running: false

        command: ["cliphist", "list"]

        stdout: StdioCollector {
            onStreamFinished: {
                const lines = this.text.split("\n");

                const newResults = [];

                for (const line of lines) {
                    if (!line || !line.trim()) {
                        continue;
                    }

                    const parts = line.split('\t');
                    const id = parts[0];
                    const content = parts[1];

                    newResults.push({
                        id: parseInt(id),
                        type: "clipboard",
                        title: content.substring(0, 30) + "...",
                        subtitle: `Clipboard entry ${line}`,
                        icon: "18px_clipboard-list",
                        data: content
                    });
                }

                root.results = newResults;
            }
        }
    }

    property var copyProcess: Process {
        property string text: ""
        command: ["wl-copy", text]
    }
}

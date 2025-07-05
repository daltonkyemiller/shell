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

    function execute(item) {
        copyProcess.text = item.data;
        copyProcess.running = true;
    }

    property var clipProcess: Process {
        running: true

        command: ["cliphist", "list"]

        stdout: SplitParser {
            splitMarker: ""
            onRead: data => {
                const lines = data.split('\n').filter(line => line.trim());
                root.results = lines.map(line => {
                    const parts = line.split('\t');
                    const id = parts[0];
                    const content = parts.slice(1).join('\t');
                    const preview = content.length > 50 ? content.substring(0, 50) + "..." : content;

                    return {
                        type: "clipboard",
                        title: preview,
                        subtitle: `Clipboard entry ${id}`,
                        icon: "edit-copy",
                        data: content
                    };
                });
            }
        }
    }

    property var copyProcess: Process {
        property string text: ""
        command: ["wl-copy", text]
    }
}

pragma Singleton

import QtQuick
import Quickshell
import "launcher-providers" as LauncherProviders
import "./launcher"

Singleton {
    id: root

    property string query: ""
    property var results: search(query)
    property var parsedQuery: parseQuery(query)

    function parseQuery(text) {
        const colonIndex = text.indexOf(':');
        if (colonIndex === -1) {
            const plugin = PluginRegistry.getPluginByPrefix("");
            return {
                prefix: "",
                query: text,
                plugin
            };
        }

        const prefix = text.substring(0, colonIndex);
        const query = text.substring(colonIndex + 1).trim();

        const plugin = PluginRegistry.getPluginByPrefix(prefix);

        if (!plugin) {
            return {
                prefix: "",
                query: text,
                plugin: null
            };
        }

        return {
            prefix,
            query,
            plugin
        };
    }

    function search(text) {
        const parsed = parseQuery(text);
        if (!parsed.plugin) {
            return [];
        }

        return parsed.plugin.search(parsed.query);
    }

    function execute(item) {
        if (!root.parsedQuery.plugin) {
            console.warn("No plugin found for query");
            return;
        }
        root.parsedQuery.plugin.execute(item);
    }
}

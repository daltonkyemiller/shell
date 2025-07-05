pragma Singleton

import QtQuick
import Quickshell
import "Plugin.qml" as Plugin
import "./plugins" as LauncherPlugins

Singleton {
    id: root

    property var prefixMap: ({})

    function getPluginByPrefix(prefix) {
        return prefixMap[prefix] 
    }

    function registerPlugin(plugin) {
        console.log(`Registering plugin: ${plugin.name}`);
        for (const prefix of plugin.prefixes) {
            if (prefixMap[prefix]) {
                console.warn(`Prefix conflict: '${prefix}' is used by multiple plugins`);
            }
            prefixMap[prefix] = plugin;
        }
    }

    Component.onCompleted: {
        registerPlugin(LauncherPlugins.Clipboard);
        registerPlugin(LauncherPlugins.Apps);
        registerPlugin(LauncherPlugins.EmojiPicker);
    }
}

pragma Singleton

import QtQuick
import Quickshell
import "launcher-providers" as LauncherProviders

Singleton {
    id: root

    property var allProviders: [LauncherProviders.AppsProvider, LauncherProviders.ClipboardProvider, LauncherProviders.TestProvider]

    property var providers: {
        let result = {};
        for (const provider of allProviders) {
            for (const prefix of provider.prefixes) {
                result[prefix] = provider;
            }
        }
        return result;
    }

    function parseQuery(text) {
        const colonIndex = text.indexOf(':');
        if (colonIndex === -1) {
            return {
                prefix: "",
                query: text
            };
        }

        const prefix = text.substring(0, colonIndex);
        const query = text.substring(colonIndex + 1).trim();

        if (providers.hasOwnProperty(prefix)) {
            const provider = providers[prefix];
            return {
                prefix: prefix,
                query: query,
                provider
            };
        }

        return {
            prefix: "",
            query: text,
            provider: null
        };
    }

    function search(text) {
        const parsed = parseQuery(text);
        const provider = providers[parsed.prefix];

        if (!provider) {
            return [];
        }

        return provider.search(parsed.query);
    }

    function execute(item) {
        let provider;
        if (item.type === "app") {
            provider = LauncherProviders.AppsProvider;
        } else if (item.type === "clipboard") {
            provider = LauncherProviders.ClipboardProvider;
        }

        if (provider) {
            provider.execute(item);
        }
    }
}

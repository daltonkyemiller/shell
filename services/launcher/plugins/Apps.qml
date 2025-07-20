pragma Singleton
import qs.services as Services
import "../../launcher"

Plugin {
    id: root
    name: "Applications"
    description: "Search for applications"
    icon: "applications-science"
    prefixes: [""]

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

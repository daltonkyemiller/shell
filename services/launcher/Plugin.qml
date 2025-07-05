import QtQuick

QtObject {
    required property string name
    required property string description
    property string icon
    required property list<string> prefixes

    function search(query) {
        console.warn(`Plugin ${name} should implement search(query) function`);
        return [];
    }

    function execute(item) {
        console.warn(`Plugin ${name} should implement execute(item) function`);
    }
}

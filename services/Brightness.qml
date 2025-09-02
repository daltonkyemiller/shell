pragma Singleton
pragma ComponentBehavior: Bound

import Quickshell
import Quickshell.Io
import QtQuick

Singleton {
    id: root

    // Signal emitted when brightness changes
    signal brightnessChanged(real brightness)

    // Current brightness (0.0 to 1.0)
    property real currentBrightness: 0

    // Max brightness value from system
    property int maxBrightness: 255

    function increaseBrightness(): void {
        setBrightness(currentBrightness + 0.1);
    }

    function decreaseBrightness(): void {
        setBrightness(currentBrightness - 0.1);
    }

    function setBrightness(value: real): void {
        value = Math.max(0, Math.min(1, value));
        const rounded = Math.round(value * 100);
        if (Math.round(currentBrightness * 100) === rounded)
            return;

        setProc.command = ["brightnessctl", "s", `${rounded}%`];
        setProc.startDetached();
    }

    reloadableId: "brightness"

    // Monitor brightness file changes
    FileView {
        id: brightnessFile
        watchChanges: true
        path: "/sys/class/backlight/apple-panel-bl/brightness"

        Component.onCompleted: {
            console.log("FileView initialized with path:", path);
        }

        onFileChanged: () => {
            this.reload();
        }

        onTextChanged: {
            console.log("Brightness file changed:", text());
            const current = parseInt(text());
            console.log("Parsed current:", current, "maxBrightness:", maxBrightness);
            if (!isNaN(current) && maxBrightness > 0) {
                const newBrightness = current / maxBrightness;
                console.log("New brightness ratio:", newBrightness, "current:", currentBrightness);
                if (Math.abs(currentBrightness - newBrightness) > 0.01) {
                    console.log("Emitting brightnessChanged signal");
                    currentBrightness = newBrightness;
                    brightnessChanged(newBrightness);
                }
            }
        }
    }

    // Get max brightness value
    FileView {
        id: maxBrightnessFile
        path: "file:///sys/class/backlight/apple-panel-bl/max_brightness"

        onTextChanged: {
            console.log("Max brightness file changed:", text().trim());
            const max = parseInt(text().trim());
            if (!isNaN(max)) {
                console.log("Setting maxBrightness to:", max);
                maxBrightness = max;
            }
        }
    }

    // Process to set brightness
    Process {
        id: setProc
    }
}

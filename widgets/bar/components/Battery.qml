import QtQuick
import QtQuick.VectorImage
import Quickshell
import Quickshell.Services.UPower
import qs.components as UI
import qs.config as Config

Item {
    implicitWidth: childrenRect.width
    implicitHeight: childrenRect.height

    Row {
        spacing: 6

        VectorImage {
            implicitHeight: Config.Theme.style.iconSizes.xs
            implicitWidth: Config.Theme.style.iconSizes.xs
            
            source: {
                const iconName = UPower.displayDevice.iconName || ""
                const percentage = UPower.displayDevice.percentage || 0
                const isCharging = UPower.displayDevice.charging || false
                
                // Handle charging state first
                if (isCharging || iconName.includes("charging")) {
                    return "../../../icons/18px_battery-charging.svg"
                }
                
                // Handle critical/alert state
                if (iconName.includes("caution") || iconName.includes("low") || percentage < 0.15) {
                    return "../../../icons/18px_battery-alert.svg"
                }
                
                // Handle battery levels based on percentage or icon name
                if (percentage > 0.8 || iconName.includes("full")) {
                    return "../../../icons/18px_battery-full.svg"
                } else if (percentage > 0.6 || iconName.includes("high")) {
                    return "../../../icons/18px_battery-high.svg"
                } else if (percentage > 0.3 || iconName.includes("good") || iconName.includes("medium")) {
                    return "../../../icons/18px_battery-medium.svg"
                } else if (percentage > 0.15 || iconName.includes("low")) {
                    return "../../../icons/18px_battery-low.svg"
                }
                
                // Default fallback
                return "../../../icons/18px_battery.svg"
            }
        }

        UI.StyledText {
            anchors.verticalCenter: parent.verticalCenter
            text: Math.round(UPower.displayDevice.percentage * 100) + "%"
        }
    }
}

# Quickshell Desktop Environment

A modern, customizable desktop shell built with [Quickshell](https://quickshell.org/) and QML, designed for Wayland compositors like Hyprland.

## Features

### 🎯 Core Components
- **Top Bar**: Clean status bar with active window display, media controls, system indicators, and clock
- **App Launcher**: Fuzzy search application launcher with smooth animations
- **Notifications**: Elegant notification system with stacking and hover interactions
- **Drawers**: Left and right slide-out panels for additional functionality
- **Media Controls**: Integrated media player controls in the bar

### 🎨 Design
- **Modern UI**: Clean, minimalist design with rounded corners and subtle borders
- **Smooth Animations**: Fluid transitions using custom Bézier curves
- **Blur Effects**: Background blur support for modern compositor integration
- **Responsive Layout**: Adapts to different screen sizes and configurations

### ⚙️ System Integration
- **Hyprland Integration**: Deep integration with Hyprland window manager
- **Wayland Native**: Built specifically for Wayland compositors
- **Battery Monitoring**: System battery status display
- **Recording Indicator**: Visual indicator when screen recording is active

## Structure

```
shell/
├── components/          # Reusable UI components
│   ├── AppIcon.qml
│   ├── GlowCard.qml
│   ├── Shortcut.qml
│   ├── StyledText.qml
│   └── StyledTextInput.qml
├── config/             # Configuration and theming
│   ├── Animation.qml   # Animation curves and timing
│   ├── BarConfig.qml   # Bar dimensions and layout
│   ├── Keymaps.qml     # Keyboard shortcuts
│   ├── Notification.qml # Notification settings
│   └── Theme.qml       # Colors and styling
├── services/           # System service integrations
│   ├── Apps.qml        # Application management
│   ├── Hyprland.qml    # Window manager integration
│   ├── Media.qml       # Media player controls
│   ├── Notifications.qml # Notification handling
│   ├── Recorder.qml    # Screen recording detection
│   └── Visibilities.qml # UI state management
├── widgets/            # Main UI widgets
│   ├── app-launcher/   # Application launcher
│   ├── bar/           # Top status bar
│   ├── drawers/       # Side panels
│   └── notifications/ # Notification display
├── scripts/           # Utility scripts
│   └── notify.sh      # Test notification generator
└── shell.qml          # Main entry point
```

## Installation

### Prerequisites
- [Quickshell](https://quickshell.org/) installed
- Wayland compositor (Hyprland recommended)
- Qt6 with QML support

### Setup
1. Clone this repository to your dotfiles or config directory
2. Ensure Quickshell can find the shell configuration:
   ```bash
   quickshell -c /path/to/shell/shell.qml
   ```
3. For Hyprland integration, make sure `hyprctl` is available in your PATH

## Configuration

### Theme Customization
Edit `config/Theme.qml` to customize colors and styling:
- **Colors**: Foreground, background, muted text, and border colors
- **Typography**: Font sizes and icon dimensions  
- **Layout**: Border radius and spacing values

### Keybindings
Keyboard shortcuts are defined in `config/Keymaps.qml`. The shell integrates with your compositor's keybinding system.

### Bar Layout
Modify `config/BarConfig.qml` to adjust bar height and positioning.

## Usage

### App Launcher
- Triggered via compositor keybinding
- Type to search applications with fuzzy matching
- Use arrow keys to navigate, Enter to launch
- Escape to close

### Notifications
- Automatically displays system notifications
- Hover to expand stacked notifications
- Click to interact with notification actions

### Media Controls
- Displays current media information in the bar
- Hover over media section for additional controls

## Development

### Testing Notifications
Use the included test script to generate sample notifications:
```bash
./scripts/notify.sh
```

### File Structure
- **Components**: Reusable UI elements with consistent styling
- **Services**: System integration and state management
- **Widgets**: Complete UI sections (bar, launcher, etc.)
- **Config**: Centralized theming and configuration

## Dependencies

- **Quickshell**: Core shell framework
- **Qt6**: UI framework and QML runtime
- **hyprctl**: Hyprland window manager control (for Hyprland integration)
- **notify-send**: System notification support

## License

This project is part of a personal dotfiles configuration. Feel free to use and modify as needed.
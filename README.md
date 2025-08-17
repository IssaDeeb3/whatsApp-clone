# WhatsApp Task 📱




## 🏗️ Architecture

### Project Structure
```
lib/
├── core/                          # Core utilities and shared resources
│   ├── data/local/               # Local storage management
│   ├── extensions/               # Dart extensions
│   ├── resources/                # App constants and assets
│   ├── shared/                   # Shared models and widgets
│   └── theme/                    # Theme configuration
├── features/                     # Feature-based modules
│   ├── calls/                    # Voice & video calls
│   ├── chat/                     # Messaging functionality
│   │   ├── models/              # Chat data models
│   │   ├── view/                # UI screens and widgets
│   │   └── view_model/          # Business logic
│   ├── communities/             # Community features
│   ├── main/                    # Main navigation
│   ├── settings/                # App settings
│   ├── stories/                 # Story features
│   └── updates/                 # Status updates
├── app.dart                     # App configuration
└── main.dart                    # Entry point
```

### Design Patterns
- **MVVM (Model-View-ViewModel)** - Clean separation of concerns
- **Repository Pattern** - Data access abstraction
- **Provider Pattern** - State management
- **Feature-First** - Modular architecture by features

## 🛠️ State Management

### Provider Pattern Implementation
```dart
MultiProvider(
  providers: [
    ChangeNotifierProvider(create: (_) => BottomNavBarVM()),
    ChangeNotifierProvider(
      create: (_) => SettingsVM(settingsLocalRepo: SettingsLocalRepo())
        ..loadSettings(),
    ),
  ],
  child: const WhatsAppCloneApp(),
)
```

### Key ViewModels
- **SettingsVM** - Theme management and app preferences
- **BottomNavBarVM** - Navigation state management
- **ChatVM** - Message handling and chat state

## 🎨 Theme System

### Dynamic Theme Switching
- **Light Theme** - Clean, modern WhatsApp light design
- **Dark Theme** - Eye-friendly dark mode
- **System Theme** - Automatic theme based on device settings
- **Persistent Storage** - Theme preference saved locally

### Theme Implementation
```dart
MaterialApp(
  theme: AppTheme.lightTheme,
  darkTheme: AppTheme.darkTheme,
  themeMode: settingsVM.themeMode,
)
```

### Color System
- **Primary Colors** - WhatsApp green (#25D366)
- **Surface Colors** - Adaptive backgrounds
- **Text Colors** - High contrast for accessibility
- **Status Colors** - Online, typing, and message states

## 📱 Responsive Design

### ScreenUtil Integration
- **Adaptive Sizing** - Responsive dimensions across devices
- **Text Scaling** - Consistent typography scaling
- **Layout Adaptation** - Flexible layouts for different screen sizes

### Implementation
```dart
ScreenUtilInit(
  designSize: const Size(375, 812),
  child: MaterialApp(...)
)
```

## 💾 Data Management

### Local Storage (GetStorage)
- **Theme Preferences** - Persistent theme settings

### Models
- **ChatDetailsModel** - Individual chat information
- **MessageModel** - Message structure and metadata
- **UpdateModel** - Story/status update data
- **UserModel** - User profile information

## 🔧 Dependencies

### Core Dependencies
```yaml
dependencies:
  flutter_screenutil: ^5.9.3    # Responsive design
  provider: ^6.1.2              # State management
  get_storage: ^2.1.1           # Local storage
  google_fonts: ^6.2.1          # Typography
  intl: ^0.19.0                 # Internationalization
```

### Key Features by Dependency
- **Provider** - Reactive state management
- **GetStorage** - Lightweight local database
- **ScreenUtil** - Responsive UI scaling
- **Google Fonts** - Custom typography
- **Intl** - Date/time formatting



## 🎯 Key Implementations

### Message Animation System
- **Slide Transitions** - Smooth message entry animations
- **Real-time Updates** - Dynamic UI updates on message send
- **Bubble Alignment** - Proper message bubble positioning

### Story Viewer
- **Auto-progression** - 5-second timer per story
- **Tap Navigation** - Left/right tap for story control
- **Progress Indicators** - Visual story progress bars
- **Smooth Transitions** - Page-based story navigation

### Theme Management
- **Persistent Storage** - Theme preference persistence
- **System Integration** - Automatic system theme detection
- **Real-time Switching** - Instant theme updates

---

**Built with  Issa Deeb**![Screenshot_1755459217.png](../../../Desktop/Screenshot_1755459217.png)
![Screenshot_1755459221.png](../../../Desktop/Screenshot_1755459221.png)
![Screenshot_1755459224.png](../../../Desktop/Screenshot_1755459224.png)
![Screenshot_1755459227.png](../../../Desktop/Screenshot_1755459227.png)
![Screenshot_1755459233.png](../../../Desktop/Screenshot_1755459233.png)
![Screenshot_1755459252.png](../../../Desktop/Screenshot_1755459252.png)
![Screenshot_1755459262.png](../../../Desktop/Screenshot_1755459262.png)![Screenshot_1755459276.png](../../../Desktop/Screenshot_1755459276.png)
![Screenshot_1755459282.png](../../../Desktop/Screenshot_1755459282.png)
![Screenshot_1755459284.png](../../../Desktop/Screenshot_1755459284.png)
![Screenshot_1755459286.png](../../../Desktop/Screenshot_1755459286.png)
![Screenshot_1755459291.png](../../../Desktop/Screenshot_1755459291.png)
![Screenshot_1755459295.png](../../../Desktop/Screenshot_1755459295.png)
![Screenshot_1755459315.png](../../../Desktop/Screenshot_1755459315.png)
![Screenshot_1755461327.png](../../../Desktop/Screenshot_1755461327.png)
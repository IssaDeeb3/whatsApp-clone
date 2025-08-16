---
description: Repository Information Overview
alwaysApply: true
---

# WhatsApp Clone Information

## Summary
A Flutter project that implements a WhatsApp clone application. The project follows a feature-based architecture with MVVM (Model-View-ViewModel) pattern.

## Structure
- **lib/**: Contains all Dart source code
  - **core/**: Core utilities and theme configurations
  - **features/**: Feature modules organized by functionality
- **android/**: Android platform-specific code
- **ios/**: iOS platform-specific code
- **web/**: Web platform-specific code
- **linux/**, **macos/**, **windows/**: Desktop platform-specific code
- **test/**: Contains test files

## Language & Runtime
**Language**: Dart
**Framework**: Flutter
**SDK Version**: ^3.8.1
**Build System**: Flutter build system
**Package Manager**: pub (Flutter/Dart package manager)

## Dependencies
**Main Dependencies**:
- flutter: SDK
- provider: ^6.1.2 (State management)
- google_fonts: ^6.2.1
- flutter_animate: ^4.5.0
- intl: ^0.19.0
- cupertino_icons: ^1.0.8

**Development Dependencies**:
- flutter_test: SDK
- flutter_lints: ^5.0.0

## Build & Installation
```bash
# Get dependencies
flutter pub get

# Run the application
flutter run

# Build for specific platforms
flutter build apk  # Android
flutter build ios  # iOS
flutter build web  # Web
```

## Project Architecture
The project follows MVVM (Model-View-ViewModel) architecture pattern:
- **Model**: Data models in feature/*/model directories
- **View**: UI components in feature/*/view directories
- **ViewModel**: Business logic in feature/*/view_model directories

## Features
- **main**: Main application screen with bottom navigation
- **chat**: Chat functionality
- **calls**: Call history and functionality
- **stories**: Stories/Status feature
- **updates**: Updates section
- **communities**: Communities feature

## Testing
**Framework**: flutter_test
**Test Location**: test/
**Run Command**:
```bash
flutter test
```
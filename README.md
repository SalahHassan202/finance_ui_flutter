# Finance UI Flutter

A clean, modern, and responsive mobile application UI built with Flutter for managing personal finances. This project demonstrates a comprehensive financial tracking interface, covering authentication, main navigation, card management, and transaction statistics.

## Key Features

* **Complete Authentication Flow:** Screens for Login, Password Reset, and OTP verification.
* **Intuitive Navigation:** Uses a **Bottom Navigation Bar** to switch between core sections (Home, Statistics, Cards, Profile).
* **Modular Architecture:** Organized into `core` and `features` directories for easy maintenance.
* **Design Efficiency:** Uses **`flutter_screenutil`** for screen adaptation and **`flutter_svg`** for crisp vector graphics.

## Getting Started

### Prerequisites

Ensure you have the Flutter SDK installed.

### Installation

1.  Clone the repository:
    ```bash
    git clone [YOUR_REPOSITORY_URL]
    cd finance_ui_flutter
    ```
2.  Install all dependencies:
    ```bash
    flutter pub get
    ```
3.  Run the application on your device or emulator:
    ```bash
    flutter run
    ```

## Technology Highlights

* **Framework:** Flutter / Dart
* **Routing:** GoRouter (Used for declarative navigation)
* **UI/Design:** flutter\_screenutil, flutter\_svg

## Structure Overview

The code is organized by features:

* `core/`: Global settings (routing, styling, assets).
* `features/`: Distinct user features (auth, main\_screen, my\_profile, statistics, etc.).

## Contact

For any inquiries or issues, please open an issue in the repository.

### Flutter CLI Basics

#### 1. **Installing Flutter CLI**
Make sure you have Flutter installed by running:

```bash
flutter --version
```

If not installed, download it from [Flutter's official website](https://flutter.dev/docs/get-started/install) and follow the setup instructions for your OS.

---

#### 2. **Creating a New Project**
To create a new Flutter project, use the `flutter create` command. It generates a new project with the default structure.

```bash
flutter create project_name
```

This command creates a directory with all the necessary files. Best practice suggests:
- Using `lowercase_with_underscores` for project names.
- Reviewing generated files for sensitive data or placeholder credentials.

After creating the project, navigate into the project directory:

```bash
cd project_name
```

---

#### 3. **Running the Project**
To run your app on an emulator or connected device, execute the following:

```bash
flutter run
```

You can specify the platform or device with flags:

```bash
flutter run -d chrome   # Run on Chrome (for web)
flutter run -d ios      # Run on iOS emulator
flutter run -d android  # Run on Android emulator
```

Make sure **emulators** are properly configured and **devices** are connected securely. For security reasons, avoid running on untrusted networks without checking app data exposure.

---

#### 4. **Building the App**
Flutter allows you to build APKs for Android or the app bundle for different platforms. Here are commands for building apps:

**Android APK:**
```bash
flutter build apk --release
```

**iOS App:**
```bash
flutter build ios --release
```

**Web Build:**
```bash
flutter build web
```

**Security Tip:** Ensure your build configurations (such as API keys or database credentials) are not hardcoded or exposed within the app files.

---

#### 5. **Managing Dependencies**
Flutter uses `pub` for package management. Dependencies are defined in the `pubspec.yaml` file. To install packages after adding them to the file, use:

```bash
flutter pub get
```

For upgrading all packages:
```bash
flutter pub upgrade
```

Always keep **dependencies** updated but ensure compatibility with your project. Use trusted sources when adding external libraries to avoid potential security risks.

---

#### 6. **Analyzing & Testing Code**
To analyze code and ensure it adheres to best practices, run:

```bash
flutter analyze
```

To run tests, use:

```bash
flutter test
```

Run these commands regularly to avoid security loopholes and maintain code quality.

---

#### 7. **Running in Debug, Release, and Profile Modes**
- **Debug mode:** default mode, used for development.
  
  ```bash
  flutter run --debug
  ```

- **Release mode:** used for production releases, optimized for speed.
  
  ```bash
  flutter run --release
  ```

- **Profile mode:** used for performance profiling.
  
  ```bash
  flutter run --profile
  ```

In production releases, ensure debugging and verbose logs are disabled to avoid unintentional data exposure.

---

#### 8. **Cleaning the Project**
To remove build artifacts and clean the project:

```bash
flutter clean
```

This can help resolve build issues and reduce app size. Regular cleaning also helps in ensuring no sensitive information is left in cache or build files.

---

#### 9. **Hot Reload and Hot Restart**
During development, Flutter offers the ability to update your app on the fly:
- **Hot reload** applies code changes without restarting the whole app.
  
  ```bash
  flutter run
  ```
  Press `r` in the terminal for hot reload.

- **Hot restart** completely restarts the app but retains the state of the app.
  
  Press `R` in the terminal for hot restart.

These are useful for quick iterations but should not be used in production as they leave debug code running.

---

#### 10. **Deploying the App**
Flutter provides detailed guides for deploying apps to both **Play Store** and **App Store**. The key commands are:

**Android:**
```bash
flutter build appbundle
```

**iOS:**
```bash
flutter build ios
```

Before deploying, ensure sensitive data like API keys or credentials are **encrypted** and handled securely using environment variables or cloud-based secret management tools.

---

If errors are found after running flutter clean, just cd into the project folder and run:

```bash
flutter pub get
```

and this will download all the required dependencies.
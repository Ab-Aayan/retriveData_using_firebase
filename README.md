# retriveData_using_firebase

## Overview

This repository contains a Flutter application that utilizes Firebase services, specifically Cloud Firestore and Firebase Authentication. The application retrieves user profile data from the Firestore database and displays it in the UI.

## Setup

To run the application locally and connect it to your Firebase project, follow these steps:

1. Clone the repository:

   ```
   git clone https://github.com/your-username/your-repository.git
   ```

2. Set up your Flutter development environment. If you haven't already, refer to the official Flutter documentation for installation instructions: [Flutter - Get Started](https://flutter.dev/docs/get-started)

3. Create a Firebase project and enable Firestore and Authentication services. Visit the Firebase console and follow the instructions to set up your project: [Firebase Console](https://console.firebase.google.com/)

4. Configure your Flutter project to use your Firebase project:

   - Update the `google-services.json` file in the `android/app` directory with your Firebase project's configuration. This file can be obtained from the Firebase console.

   - Update the `Info.plist` file in the `ios/Runner` directory with your Firebase project's configuration. This file can be obtained from the Firebase console.

5. Open the project in your preferred Flutter IDE (e.g., Android Studio, VS Code).

6. Run the application on an emulator or physical device using the following command:

   ```
   flutter run
   ```

   Make sure the emulator or device is connected and set up properly.

## Code Explanation

The application consists of several components:

- `AuthController`: Handles authentication operations and retrieves the current user's ID from Firebase Authentication.

- `DataController`: Handles data-related operations, such as fetching the user's profile data from Cloud Firestore based on the user ID.

- `Database` widget: Represents the main user interface of the application. It displays the user's username retrieved from the Firestore database.

Please refer to the code comments for more detailed explanations of each component.

## Dependencies

The application relies on the following dependencies:

- `cloud_firestore`: Provides access to the Cloud Firestore database.

- `firebase_auth`: Enables Firebase Authentication functionality.

- `flutter/material`: Implements the UI components and design.

- `google_fonts`: Offers a variety of fonts for the application's typography.

Make sure to include these dependencies in your Flutter project's `pubspec.yaml` file before running the application.

## Contributing

Contributions to this repository are welcome. If you encounter any issues or would like to add new features, feel free to submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute the code as permitted by the license.

## Acknowledgments

- [Flutter Documentation](https://flutter.dev/docs) - Official documentation for the Flutter framework.

- [Firebase Documentation](https://firebase.google.com/docs) - Official documentation for Firebase services.

- [OpenAI GPT-3](https://www.openai.com/research/gpt-3) - Inspiration and guidance from the GPT-3 language model.

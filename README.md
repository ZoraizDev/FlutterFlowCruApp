# cruapp

Welcome to **cruapp**, a FlutterFlow project designed to bring you the best of mobile development with the power of Flutter and Supabase.

## Getting Started

This project is built using [FlutterFlow](https://flutterflow.io) and runs on the Flutter _stable_ release. Below you'll find all the information you need to get up and running.

## Features

### Database

We use [Supabase](https://supabase.io) as our primary database. Supabase is an open-source Firebase alternative that provides all the backend services you need to build a modern application.

### Data Fetching

For data fetching, we utilize:
- **Supabase APIs**: To interact directly with the Supabase database.
- **Query**: For efficient and flexible data fetching patterns.

### Authentication

Authentication is handled through Supabase, ensuring secure and seamless user management.

#### Social Logins

We have integrated several social login options to enhance the user experience:
- **Sign in with Google**
- **Sign in with LinkedIn**
- **Sign in with Facebook**

## Getting Started with Development

To start developing with this project, follow these steps:

1. **Clone the repository**:
    ```sh
    git clone https://github.com/your-repo/cruapp.git
    ```

2. **Navigate to the project directory**:
    ```sh
    cd cruapp
    ```

3. **Install dependencies**:
    ```sh
    flutter pub get
    ```

4. **Run the app**:
    ```sh
    flutter run
    ```

## Project Structure

```plaintext
cruapp/
├── lib/
│   ├── main.dart       # Entry point of the application
│   ├── auth/           # Authentication related screens and logic
│   ├── screens/        # Main screens of the application
│   ├── widgets/        # Custom widgets used throughout the app
│   ├── services/       # Services for API calls and other utilities
├── pubspec.yaml        # Flutter project configuration file
├── README.md           # Project documentation
└── .gitignore          # Files to ignore in git

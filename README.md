# 🌌 Cosmic App

Cosmic App is a Flutter-based mobile application that takes users on an interactive journey through the solar system. It features a modern UI, secure authentication, session management, and rich planetary details.

---

## 🚀 Features
- **Splash Screen** with session checking.
- **Secure Login & Signup** with cached sessions.
- **Home Screen** listing all planets from our cosmic database.
- **Planet Detail Screen** with stats like mass, gravity, and temperature.
- **Favourites Screen** to save preferred planets.
- **Profile Screen** showing user details and progress.
- **Offline-ready** with cached data for faster loads.

---

## 📱 User Journey

### 1. First App Launch
- User opens the app for the first time.
- **Splash Screen** appears with animation.
- No cached data found → navigates to **Login Screen**.

### 2. Authentication
- User enters **email** and **password**.
- On successful sign-in:
  - User data is cached.
  - Session expiry is set (default 7 days).
  - Navigates to **Home Screen**.

### 3. Exploring the Home Screen
- Displays a list of planets with images and descriptions.
- User taps a planet to view **Planet Detail Screen** with full stats.
- User can mark planets as **Favourites**.

### 4. Viewing Favourites
- **Favourites Screen** lists all saved planets.
- User can tap any favourite to view details instantly.

### 5. Managing Profile
- **Profile Screen** shows:
  - Name & role.
  - Profile picture.
  - Personal progress (via a custom progress indicator).
- User can manage preferences and log out.

### 6. Returning to the App
- On re-launch:
  - If **session is valid** → goes directly to **Home Screen**.
  - If **session expired** → navigates to **Login Screen**.
  - If **cache cleared** → shows **Splash Screen** and starts over.

---

## 🛠 Tech Stack
- **Flutter** (Dart)
- **SharedPreferences** for session caching.
- **Custom Widgets** for consistent UI components.
- **Responsive UI** for mobile screens.

---

## 📂 Folder Structure

lib/
│
├── core/ # Constants & theme
├── models/ # Data models (Planet, User)
├── data/ # Static & API-driven data
├── services/ # Storage & API services
├── widgets/ # Reusable UI components
├── screens/ # App screens (Home, Login, etc.)
└── routes/ # App navigation


---

## 🚀 Getting Started
1. Clone the repo:
   ```bash
   git clone https://github.com/your-repo/cosmic-app.git
2. Install dependencies:
    flutter pub get
3. Run the app:
flutter run


📜 License
This project is licensed under the MIT License.
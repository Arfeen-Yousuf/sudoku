# Sudoku Learner 📘🧩

**Sudoku Learner** is a Flutter-based mobile application designed to help users learn Sudoku techniques in an interactive, step-by-step way. The goal is to provide a clean, beginner-friendly tool for understanding both the rules and solving strategies behind Sudoku.

---

## 📦 Current Status: Week 1 - Static UI (Non-Interactive)

This week’s focus is on building the static layout of the MVP. The current implementation includes:

- A home screen with a title and start button.
- A Sudoku board layout with a static puzzle.
- A number pad (non-interactive).
- A placeholder for the "Hint" and "Learn" sections.

No interactivity or state management is added yet — purely layout and visual structure.

---

## 🛠️ Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- A working IDE (e.g., [Android Studio](https://developer.android.com/studio) or [VS Code](https://code.visualstudio.com/))

### Run Locally

```bash
git clone https://github.com/your-username/sudoku-learner.git
cd sudoku-learner
flutter pub get
flutter run
```

### 🧰 Flutter Beginner Resources

If you're new to Flutter or want to brush up while exploring this app, check out these helpful guides:

    🔹 Flutter Layouts (https://docs.flutter.dev/ui/layout)
    🔹 Flutter Widgets Catalog (https://docs.flutter.dev/ui/widgets)
    🔹 Flutter Codelabs for Beginners (https://docs.flutter.dev/codelabs)

### 📁 Folder Structure
```bash
lib/
├── main.dart         # Entry point
├── screens/
│   └── home_screen.dart
│   └── play_screen.dart
├── widgets/
│   └── game_cell.dart
│   └── game_grid.dart
│   └── number_button.dart
│   └── primary_button.dart
├── theme/
│   └── theme.dart
assets/
├── images/
│   └── sudoku.png
```

### 🔮 What's Next?

In the next week, the app will support:

- Tap-to-select cells and number inputs.
- Check game validation
- "Learn to play" screen
    
### 👨‍💻 Author

Created by Arfeen Yousuf

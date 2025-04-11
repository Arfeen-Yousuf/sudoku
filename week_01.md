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


🧰 Flutter Beginner Resources

If you're new to Flutter or want to brush up while exploring this app, check out these helpful guides:

    🔹 Flutter Layouts Cheat Sheet
    🔹 Flutter Widgets Catalog
    🔹 Building Layouts in Flutter
    🔹 Flutter Codelabs for Beginners

📁 Folder Structure

lib/
├── main.dart         # Entry point
├── screens/
│   └── home_screen.dart
│   └── sudoku_screen.dart
├── widgets/
│   └── sudoku_board.dart
│   └── number_pad.dart
├── constants/
│   └── app_styles.dart
assets/
├── puzzles/
│   └── easy.json     # (Future use)

🔮 What's Next?

In upcoming weeks, the app will support:

    Tap-to-select cells and number inputs.

    Basic hinting techniques (like Naked Single, Hidden Single).

    A learning section with visual explanations.

👨‍💻 Author

Created by Arfeen Yousuf
```

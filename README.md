# PC16 – Week 14: Two-Screen Static UI (TasteTrove)

- **Student Name:** Ismael Haven Caday
- **Course:** NTC_PC16 – Mobile Development w/ Lab

---

## Project Overview
**TasteTrove** is a static two-screen Flutter UI prototype inspired by a Filipino gourmet and recipe-sharing mobile app. It extends a single-screen layout into two connected `StatelessWidget` screens in separate Dart files, using shared `ThemeData`, local image assets, and layered `Stack`/`Positioned` overlays.

---

## Key Features & Rubric Alignment

- **Two Related `StatelessWidget` Screens (Separate Files):**
  - `lib/screens/home_screen.dart` (`TasteTroveHomeScreen`): Displays the app header, search bar, 2-column Filipino recipe grid (*Kinilaw*, *Beef Steak*, *Lumpiang Shanghai*, *Kare-Kare*, *Chicken Adobo*, *Lechon Kawali*), bottom navigation bar, and a floating action overlay.
  - `lib/screens/recipe_detail_screen.dart` (`RecipeDetailScreen`): Displays full dish details, ingredients list, and step-by-step preparation instructions.
- **Purposeful `Stack` & `Positioned` Overlays:**
  - Floats the **"Share your Ingredients!"** pill button (`Positioned(bottom: 14, right: 16)`) over the scrollable home feed.
  - Layers origin and category badges (`🇵🇭 Filipino Classic` and `Main Course • 25 mins`) directly on top of the recipe hero image on the details screen.
- **Local Image Assets (`Image.asset()`):**
  - Loads bundled dish images (`assets/images/Kinilaw.png`, `assets/images/Bistek.png`) registered in `pubspec.yaml`.
- **Shared `ThemeData` & Navigation (`lib/main.dart`):**
  - Defines a unified warm-gold (`#C59B43`) Material 3 `ColorScheme` and connects both screens via named routes (`'/'` and `'/details'`).

---

## Project Structure

```text
week14_two_screen_ui/
├── assets/
│   └── images/
│       ├── Bistek.png
│       └── Kinilaw.png
├── lib/
│   ├── screens/
│   │   ├── home_screen.dart
│   │   └── recipe_detail_screen.dart
│   └── main.dart
├── test/
│   └── widget_test.dart
├── pubspec.yaml
└── README.md

```

---

## How to Run

1. **Install dependencies:**
```bash
flutter pub get

```


2. **Run on Chrome or an emulator:**
```bash
flutter run

```


3. **Format and analyze code:**
```bash
dart format lib/
flutter analyze

```



```

### How to Add It to Your Project
1. In VS Code, open `README.md` at the root of `week14_two_screen_ui`, replace the starter text with the markdown above, and press **Ctrl + S**.
2. Commit and push it alongside your code:
   ```powershell
   git add README.md
   git commit -m "docs: add Week 14 TasteTrove README"
   git push

```

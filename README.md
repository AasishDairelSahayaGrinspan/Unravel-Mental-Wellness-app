# Unravel (An Open-Source Project)

**Your quiet place.** A premium mental wellness companion built with Flutter that blends mood tracking, guided practices, and supportive nudges to help users build sustainable self-care habits.

## ✨ Features

- **Daily Mood Check-ins** – Lightweight prompts capturing mood, energy, and stress levels with optional free-form notes.
- **Emotion Journal** – Searchable, taggable entries with streak tracking and reflective writing reminders.
- **Personalized Practice Queue** – AI-assisted recommendations for breathing, meditation, or CBT-inspired exercises.
- **Guided Audio Sessions** – Downloadable, offline-friendly audio library with timers and ambient soundscapes.
- **Grounding Toolkit** – Quick-access interventions (5-4-3-2-1 grounding, box breathing, body scan) optimized for touch gestures.
- **Gratitude & Wins Board** – Visual board for micro-accomplishments to reinforce positive reframing.
- **Goal & Habit Loops** – SMART goal templates, habit loop builder, and gentle reminder nudges.
- **Insights Dashboard** – Weekly trend lines, trigger detection, and personalized suggestions from aggregated mood data.
- **Safety Net** – Region-aware hotline directory, positive scripting, and contact escalation for trusted supporters.
- **Community Challenges (Opt-in)** – Privacy-conscious group challenges with anonymized leaderboards and badges.

## 🛠️ Tech Stack

| Layer | Stack |
| --- | --- |
| Framework | Flutter (Dart), SDK ^3.10.3 |
| Animations | Lottie, flutter_animate, Reanimated transitions |
| Typography | Google Fonts (via `google_fonts` package) |
| Design System | Custom theme with `AppColors`, `AppTypography`, `AppTheme` |
| Target Platforms | Android, iOS, Web, Windows, macOS, Linux |

=======

## ✨ Features

- **Daily Mood Check-ins** – Lightweight prompts capturing mood, energy, and stress levels with optional free-form notes.
- **Emotion Journal** – Searchable, taggable entries with streak tracking and reflective writing reminders.
- **Personalized Practice Queue** – AI-assisted recommendations for breathing, meditation, or CBT-inspired exercises.
- **Guided Audio Sessions** – Downloadable, offline-friendly audio library with timers and ambient soundscapes.
- **Grounding Toolkit** – Quick-access interventions (5-4-3-2-1 grounding, box breathing, body scan) optimized for touch gestures.
- **Gratitude & Wins Board** – Visual board for micro-accomplishments to reinforce positive reframing.
- **Goal & Habit Loops** – SMART goal templates, habit loop builder, and gentle reminder nudges.
- **Insights Dashboard** – Weekly trend lines, trigger detection, and personalized suggestions from aggregated mood data.
- **Safety Net** – Region-aware hotline directory, positive scripting, and contact escalation for trusted supporters.
- **Community Challenges (Opt-in)** – Privacy-conscious group challenges with anonymized leaderboards and badges.

## 🛠️ Tech Stack

| Layer | Stack |
| --- | --- |
| Framework | Flutter (Dart), SDK ^3.10.3 |
| Animations | Lottie, flutter_animate, Reanimated transitions |
| Typography | Google Fonts (via `google_fonts` package) |
| Design System | Custom theme with `AppColors`, `AppTypography`, `AppTheme` |
| Target Platforms | Android, iOS, Web, Windows, macOS, Linux |

## 📁 Project Structure

```
lib/
├── main.dart                   # App entry point (UnravelApp)
├── screens/
│   ├── splash_screen.dart      # Animated splash / onboarding
│   ├── login_screen.dart       # Authentication screen
│   ├── main_shell.dart         # Bottom navigation shell
│   ├── home_screen.dart        # Home dashboard
│   └── placeholder_screen.dart # Placeholder for upcoming screens
├── theme/
│   ├── app_colors.dart         # Color palette tokens
│   ├── app_typography.dart     # Typography scale
│   └── app_theme.dart          # Material ThemeData configuration
└── widgets/
    ├── frosted_glass_card.dart  # Glassmorphism card component
    ├── gradient_background.dart # Animated gradient backgrounds
    ├── mood_selector.dart       # Daily mood picker
    ├── mood_chart.dart          # Weekly mood trend chart
    ├── recovery_score_card.dart # Recovery score gauge card
    ├── quick_action_button.dart # Quick action grid buttons
    ├── pill_button.dart         # Rounded pill-style CTA button
    └── streak_indicator.dart    # Streak tracking display
```

## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (^3.10.3)
- Dart SDK (bundled with Flutter)
- An IDE with Flutter support (VS Code, Android Studio, IntelliJ)

### Setup

```bash
# Clone the repository
git clone https://github.com/AasishDairelSahayaGrinspan/Unravel-Mental-Wellness-app
cd Unravel-Mental-Wellness-app

# Install dependencies
flutter pub get

# Run the app
flutter run
```

### Platform-Specific

```bash
# Android
flutter run -d android

# iOS (macOS only)
flutter run -d ios

# Web
flutter run -d chrome

# Windows
flutter run -d windows
```

## 🗺️ Roadmap

- [x] Design system (colors, typography, theming)
- [x] Splash screen with Lottie animations
- [x] Login / authentication screen
- [x] Bottom navigation shell
- [x] Home dashboard with mood selector, recovery score, streak indicator, and mood chart
- [ ] Complete emotion journal flow with offline persistence
- [ ] Guided audio sessions player
- [ ] Grounding toolkit interactions
- [ ] Backend API integration (mood entries, sync)
- [ ] Notification service for reminders and streak nudges
- [ ] AI-assisted recommendation engine

## 🤝 Contributing

We welcome contributions! Areas where help is especially appreciated:

- Inclusive UX writing and accessibility improvements
- Evidence-based practice libraries (CBT, DBT, mindfulness)
- Privacy-preserving analytics approaches
- New widget components and screen designs

Please open an issue before submitting large PRs so we can plan together.

## 📄 License

This project is distributed under the MIT License. See [LICENSE](LICENSE) for details.

## 📬 Contact

Questions or collaboration ideas? Open an issue or reach out via GitHub Discussions once enabled.

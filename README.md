# 🍳 SnapChef

> An AI-powered iOS recipe app — scan ingredients with your camera, browse smart recipes, and cook with augmented reality guidance.

SnapChef is a portfolio iOS project demonstrating end-to-end native development in Swift. It combines foundational UIKit patterns with advanced features like CoreML image recognition, ARKit cooking overlays, REST API integration, and CoreData persistence — all wrapped in a clean MVC + MVVM hybrid architecture.

---

## ✨ Features

- 📷 **AI Ingredient Scanner** — Identify ingredients in real-time using on-device CoreML (no internet needed)
- 🥘 **Recipe Browser** — Beautiful grid of curated recipes with image, title, cooking time, and difficulty
- 🔍 **Smart Filtering** — Browse by cuisine, category, difficulty, and cooking time
- 🥚 **"What Can I Cook?"** — Find recipes based on ingredients you already have
- 🌐 **AR Cooking Mode** — Step-by-step instructions overlaid in augmented reality
- ❤️ **Favorites & History** — Locally persisted with CoreData
- 📊 **SwiftUI Dashboard** — Reactive UI for stats, recently cooked, and recommendations
- 🌙 **Dark Mode + Accessibility** — Full support for iOS system features
- 📱 **Adaptive Layout** — Optimized for all iPhone sizes via Auto Layout

---

## 🛠️ Tech Stack

### Languages & Frameworks

| Layer | Technology |
|---|---|
| **Language** | Swift 5+ |
| **UI (foundation)** | UIKit, Storyboards, Auto Layout |
| **UI (modern)** | SwiftUI |
| **Persistence** | CoreData |
| **Networking** | URLSession, async/await, Codable |
| **Machine Learning** | CoreML, Vision framework |
| **Augmented Reality** | ARKit, RealityKit |
| **Camera** | AVFoundation |

### Architecture & Patterns

- **MVC** for UIKit screens
- **MVVM** for SwiftUI screens
- **Protocol-oriented design** (DataSource, Delegate patterns)
- **Separation of concerns** — Models stay pure (no UIKit imports)

### Tools

- Xcode 15+
- Git for version control
- Interface Builder + programmatic constraints

---

## 🏗️ Project Structure

```
SnapChef/
├── Controller/              # ViewControllers
│   └── RecipeGridViewController.swift
├── Model/                   # Pure data structures
│   ├── Recipe.swift
│   └── Ingredient.swift
├── View/                    # Storyboards + custom cells
│   ├── Main.storyboard
│   └── RecipeCollectionViewCell.swift
├── Resources/               # Assets, image catalogues
│   └── Assets.xcassets
└── (planned)
    ├── Networking/          # API layer
    ├── Persistence/         # CoreData stack
    ├── ML/                  # CoreML models
    └── AR/                  # ARKit scenes
```

**Design principle:** Models import only `Foundation`. UI logic lives in views/controllers. Networking and persistence are isolated layers.

---

## 📋 Development Phases

This project is intentionally scoped to demonstrate progressive iOS development skills, organized into 8 phases:

| Phase | Status | Focus |
|---|---|---|
| 1️⃣ **UIKit Foundation** | ✅ Complete | TableView, MVC patterns, IBOutlets, optionals, ViewController lifecycle |
| 2️⃣ **Recipe Browse** | 🟡 In Progress | UICollectionView, custom cells, Auto Layout, navigation, segues |
| 3️⃣ **Networking** | ⏳ Planned | URLSession, Codable, async/await, error handling |
| 4️⃣ **CoreData Persistence** | ⏳ Planned | NSManagedObject, fetch requests, migrations |
| 5️⃣ **CoreML Scanner** | ⏳ Planned | Vision framework, camera capture, image classification |
| 6️⃣ **ARKit Cooking** | ⏳ Planned | 3D scene management, anchors, augmented overlays |
| 7️⃣ **SwiftUI Dashboard** | ⏳ Planned | State management, declarative UI, UIKit-SwiftUI bridging |
| 8️⃣ **Polish & Distribution** | ⏳ Planned | Animations, accessibility, dark mode, app icon, launch screen |

---

## 🎓 Skills Demonstrated

By completion, this project showcases proficiency in:

- ✅ **Swift fundamentals** — optionals, enums, protocols, structs vs classes, value vs reference types
- ✅ **UIKit mastery** — UIViewController, UITableView, UICollectionView, IBOutlet/IBAction, Auto Layout
- ✅ **Protocol-oriented design** — DataSource and Delegate patterns, decoupling via protocols
- ✅ **Memory management** — weak vs strong references, retain cycle prevention
- ⏳ **Networking** — REST APIs, async/await, JSON decoding
- ⏳ **Data persistence** — CoreData, local storage strategies
- ⏳ **Machine learning** — CoreML integration, image classification
- ⏳ **Augmented reality** — ARKit fundamentals, 3D content
- ⏳ **Modern UI** — SwiftUI and reactive programming
- ⏳ **App architecture** — MVC vs MVVM decisions, layered design
- ⏳ **Production polish** — accessibility, internationalization, dark mode

---

## 📸 Screenshots

_Coming soon — screenshots and demo videos added as each phase completes._

---

## 🚀 Getting Started

### Prerequisites

- macOS Ventura or later
- Xcode 15+
- iOS 17+ SDK
- An iPhone simulator (recommended) or physical device for AR/Camera features (Phases 5-6)

### Setup

```bash
git clone https://github.com/SaumyadeepRay/SnapChef.git
cd SnapChef
open SnapChef.xcodeproj
```

In Xcode:

1. Select an iPhone simulator (or your connected device)
2. Press `Cmd + R` to build and run

---

## 📌 Project Status

🚧 **Active development** — currently building Phase 2 (Recipe Browse with UICollectionView).

Progress is tracked through commit history. Each commit represents a small, focused change with a meaningful message. Follow along by watching the [commit log](https://github.com/SaumyadeepRay/SnapChef/commits/main).

---

## 💡 Why Build This?

Most beginner iOS portfolios show one thing well — a todo list, a weather app, a calculator. SnapChef intentionally covers the **full spectrum** of iOS development so it serves as a single comprehensive project demonstrating multiple skills:

- **Foundation** (UIKit, MVC) — Phase 1-2
- **Real-world iOS work** (Networking, Persistence) — Phase 3-4
- **Apple's flagship technologies** (CoreML, ARKit) — Phase 5-6
- **Modern paradigms** (SwiftUI, async/await) — Phase 7
- **Production readiness** (Polish, accessibility) — Phase 8

The goal: one repo that proves I can build, ship, and maintain real iOS apps.

---

## 👨‍💻 Author

**Saumyadeep Ray**
Full-stack developer expanding from MERN/WordPress into native iOS development.

🔗 [GitHub](https://github.com/SaumyadeepRay) · [LinkedIn](https://www.linkedin.com/in/saumyadeep-ray/)

---

## 📜 License

MIT License — feel free to learn from this code or use it as a starting point for your own projects.

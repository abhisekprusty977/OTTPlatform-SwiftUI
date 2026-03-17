# OTTPlatform-SwiftUI
# Project Overview: CineFilx

CineFilx is a SwiftUI-based iOS application that showcases a movie browsing experience with a modern, dark-themed UI. The app features a splash screen, a tab-based layout with multiple sections (Home, Upcoming, Search, Downloads), and integrates both static content and dynamic lists with loading placeholders. It appears to be structured as a foundation for a streaming-style app, with emphasis on browsing and discovery.

# Key Features

- Splash Screen Transition
   - The app launches into a custom splash screen (SplashScreen) that animates a logo and transitions to the main content after a short delay.
   - Uses a solid brand color background (Color.redTheme) and spring animations for polish.

- Tab-Based Navigation
   - The main UI is a TabView (ContentView) with four tabs:
      - Home (house icon)
      - Upcoming (play.circle icon)
      - Search (magnifying glass icon)
      - Download (arrow.down icon)
   - The tab bar is customized to a dark appearance using UITabBarAppearance.

- Home Screen
   - Implemented in HomeView.
   - Displays:
      - A top image carousel (ImageCarouselView) showing featured poster URLs.
      - Multiple horizontal scrolling sections (e.g., “Trending Movies”, “Top Rated Movies”, “Trending TV”), each fed by URL constants from Constants.
   - Uses NavigationView with a fully dark-styled navigation bar.

- Upcoming Screen
   - Implemented in UpcomingView.
   - Asynchronously loads upcoming movies via a MovieViewModel (not shown in the results, but referenced).
   - Shows shimmer-style placeholders (ShimmerMoviePlaceholder) while loading.
   - Displays a list of upcoming movies with poster image, title, and release date using AsyncImage.
   - Maintains a dark background and customized navigation bar.

- Search Screen
   - Implemented in SearchScreenView (SearchPage.swift􀰓).
   - Contains a search field and a filtered list of movies powered by a simple local array of Movie models.
   - Each result shows a poster image and text details with AsyncImage.
   - Uses a black background and configures UINavigationBarAppearance for dark styling.

- Downloads Screen
   - Implemented in DownloadScreen.
   - Minimal placeholder UI with a dark background and a download icon.

# Visual Design and Theming

- Dark Mode First
   - The app consistently uses a black background across screens with white text and subtle gray accents.
   - Navigation bars and the tab bar are explicitly styled for dark mode using UIKit appearance proxies.

- Brand Color
   - A custom Color.redTheme is referenced across the app (e.g., splash background, gradient button). This likely comes from either an asset color or a Color extension (not shown, but used).

- Custom Button Style
   - GradientButtonStyle defines a reusable ButtonStyle that applies padding, corner radius, and a gradient background.
      - Pressed state uses a gray gradient.
      - Normal state uses a redTheme gradient.

# Data Models and Constants

- Models
   - Movie and MovieUpcoming structs (in Model.swift􀰓) are simple Identifiable models used for search and upcoming lists.

- Constants
   - Constants holds user-facing labels for tabs and headers, plus a collection of image URLs used throughout the UI.

# Architecture and Patterns

- SwiftUI + UIKit Appearance
   - Primary UI is SwiftUI, with UIKit UINavigationBarAppearance and UITabBarAppearance used to ensure consistent dark styling.

- Async Loading
   - The UpcomingView uses Swift concurrency (.task) to load data via MovieViewModel. While the view model implementation isn’t shown, the pattern suggests you’re set up for network-backed content.

- Image Loading
   - AsyncImage is used across the app to fetch and display remote poster images with loading/failure states.

# Notable Files

- CineFilxApp.swift􀰓: App entry point that launches SplashScreen.
- SplashScreen.swift􀰓: Animated splash screen with timed transition to ContentView.
- ContentView.swift􀰓: Hosts the TabView and configures the tab bar appearance.
- HomeView.swift􀰓: Carousel and horizontal lists for featured/trending content.
- UpcomingScreen.swift􀰓: Async list of upcoming movies with shimmer placeholders.
- SearchPage.swift􀰓: Search UI with local filter and AsyncImage list.
- DownloadScreen.swift􀰓: Placeholder downloads page.
- Model.swift􀰓: Basic Movie and MovieUpcoming models.
- Constants.swift􀰓: Label strings and poster URL constants.
- GradientCustomButton.swift􀰓: Reusable gradient button style.

# Strengths

- Cohesive dark theme with careful use of UINavigationBarAppearance and UITabBarAppearance.
- Clean SwiftUI structure that separates concerns by screen.
- Good UX touches: splash animation, shimmer placeholders, loading states for images.
- Reusable styling via GradientButtonStyle.

# Opportunities for Improvement

- Centralize theme colors and typography in a dedicated “Theme” or “DesignSystem” file; confirm redTheme is defined in Assets or a Color extension and used consistently.
- Replace hardcoded image URLs with a networking layer and a service class to fetch real data (if not already planned in MovieViewModel).
- Consider moving UIKit appearance configuration into a single place (e.g., app startup) to avoid repetition across views.
- Add error handling and empty states for network failures (e.g., on the Upcoming screen).
- Add unit/UI tests beyond the default launch test to cover view model logic and filtering.
- Consider extracting common view components (e.g., a reusable AsyncPosterView, SectionHeader, ShimmerMoviePlaceholder) into separate files for reuse and clarity.

# My Designation : iOS Developer

- My GitHub Account : https://github.com/abhisekprusty977

- Youtube Channel : https://www.youtube.com/@abhisekprusty4990

- Xcode Download Link : https://apps.apple.com/in/app/xcode/id497799835?mt=12

- Cocoapods Installation Link : https://cocoapods.org

- Git Installation for Mac : https://git-scm.com/install/mac

- SwiftUI Playlist - https://www.youtube.com/playlist?list=PLuP_IsbpuSAlGnB6pRFySgkzitsnR00Y0

- UIKit With Storyboard - https://www.youtube.com/playlist?list=PLuP_IsbpuSAkiwJS_An90f4qnPmRxz7D6

- Travel Playlist - https://www.youtube.com/playlist?list=PLuP_IsbpuSAlOdkSEHe7176JtOWeyz31a

# My Projects Youtube Links :
- Apple Pay : https://youtu.be/PXAGodERtCU?si=2UNQOUFrkZjZZMi1

- Food App : https://youtu.be/eWnWKeUDFRU?si=8oZtqvOwjRRsEIOB

- SwiftUI LiquidGlass : https://youtu.be/OjAGw_74xYM?si=XO8FZShgu9-Enxwq

- Adding Intelligent App Features With Generative Models : https://www.youtube.com/watch?v=Wc5XUw1S7Kg

- Adopting App Intents To Support System Experiences : https://youtu.be/_4k3RiHtOr0?si=E0TWnU3NFjX8QAJm

- Adopting SwiftData For A Core Data App : https://youtu.be/dE4HmNowYk0

- Understanding StoreKit WorkFlows : https://www.youtube.com/watch?v=jGyQN0jWg20

- Understanding MVC | MVVM | VIPER | Clean Architecture : https://www.youtube.com/watch?v=xIWHujzNzLM

- Real Time Chat Application : https://www.youtube.com/watch?v=ejeq1pLHh_8

# 🔗 GitHub Direct Projects Links : 
- Apple Pay : https://github.com/abhisekprusty977/Apple-Pay

- Food App : https://github.com/abhisekprusty977/FoodApp-SwiftUI

- Building An App With Liquid Glass : https://github.com/abhisekprusty977/Building-an-app-with-Liquid-Glass

- Adding Intelligent App Features With Generative Models : https://github.com/abhisekprusty977/Adding-intelligent-app-features-with-generative-models

- Adopting App Intents To Support System Experiences : https://github.com/abhisekprusty977/Adopting-App-Intents-to-support-system-experiences

- Adopting SwiftData for a Core Data app : https://github.com/abhisekprusty977/Adopting-SwiftData-for-a-Core-Data-app

- Understanding StoreKit WorkFlows : https://github.com/abhisekprusty977/StoreKit-workflows

- Real Time Chat Application : https://github.com/abhisekprusty977/Real-Time-Chat-Application

# Project Documentation Link :
- Apple Pay Project Documentation : https://docs.google.com/document/d/1r0r4iO0tXC3VUlNJztKiIq01wLfRSJoP94YpRskXjfs/edit?usp=sharing 

- Food App Project Documentation : https://docs.google.com/document/d/1SvcKUT84Mv1fBaXXgPwaAaWo_o1pczVS76MN-K8ScZY/edit?usp=sharing 

- SwiftUI LiquidGlass Project Documentation : https://docs.google.com/document/d/1LkzketQoOJKPxHPbsskB46dB8sUEOwKEzNnbRQK1sCc/edit?usp=sharing 

- Adding Intelligent App Features With Generative Models Project Documentation : https://docs.google.com/document/d/1aVkbyej1zpfgCDJfmp-1lIPjexUJptkxiiuCMqZqm2c/edit?usp=sharing 

- Adopting App Intents To Support System Experiences Project Documentation : https://docs.google.com/document/d/1Te8B_m-ypjYt8KAhPrn5SpagggpdmxMxgQ45DSDDZVc/edit?usp=sharing 

- Adopting SwiftData For A Core Data App Project Documentation : https://docs.google.com/document/d/1EtKC1tBnjNOtQoaGSVBVrWTXGGYH_4bh0w__ayzYlhU/edit?usp=sharing

- Understanding StoreKit WorkFlows for Project Documentation : https://docs.google.com/document/d/1viXaDNEpJjJE93JyYhi6faQ-nqmVgI-1YixxK7NldhQ/edit?usp=sharing

# Author : Abhisek Prusty

# India 🇮🇳








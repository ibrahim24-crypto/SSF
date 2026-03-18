# Project Blueprint

## Overview

This document outlines the features, design, and architecture of the SecretScroll Flutter application.

## Current Features

*   **Project Name:** SecretScroll
*   **Firebase Integration:** Core Firebase services are integrated (Authentication, Firestore).
*   **Authentication:** Supports anonymous and Google Sign-In.
*   **Firestore Database:** Stores user-created posts.
*   **Post Creation:** Users can create posts with a title and content.
*   **Home Screen Feed:** Displays a list of all created posts.
*   **State Management:** Using Riverpod for state management.
*   **Routing:** Basic navigation implemented.
*   **Material Design 3 Theme:**
    *   Light and dark themes using `ColorScheme.fromSeed`.
    *   Custom typography with `google_fonts`.
    *   Theme toggle for switching between light and dark modes.
*   **Clean Codebase:** Refactored to address all lint warnings.

## Future Enhancements

*   **User Profiles:** Display user information and posts.
*   **Post Deletion:** Allow users to delete their own posts.
*   **Admin Panel:** Create a separate UI for admin users to manage the app.
*   **Image Support:** Allow users to attach images to their posts.
*   **Comments:** Enable users to comment on posts.

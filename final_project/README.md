# THP Dev Manual

## Overview

THP Dev Manual is a React SPA connected to a Ruby on Rails API. The app is an interactive manual that helps beginner developers at The Hacking Project review the steps of a complete web project.

## Problem solved

Beginner students can easily get lost between planning, frontend, backend, APIs, debugging, Git, documentation, and project presentation. This project solves that problem by organizing the learning path into clear educational chapters.

## Target users

- Beginner students at The Hacking Project.
- Beginner developers who need a simple project workflow.
- Students preparing their final project presentation.

## Features

- Clear homepage.
- Section navigation.
- List of 9 educational chapters.
- Chapters loaded from a Rails API.
- Summary, content, example, and practical tips for each chapter.
- Loading state.
- Error message when the API is unavailable.
- Manual testing checklist.

## Architecture

```txt
final_project/
├── brief.md
├── README.md
├── journal.md
├── frontend/
│   └── thp-dev-manual/
├── backend/
│   └── thp_dev_manual_api/
└── docs/
    ├── manual_tests.md
    ├── pitch.md
    ├── prompts.md
    └── share_message.md
```

## Tech stack

- React
- Vite
- Ruby on Rails API
- SQLite
- rack-cors
- oxlint

## Installation

Install backend dependencies:

```bash
cd final_project/backend/thp_dev_manual_api
bundle install
rails db:create
rails db:migrate
rails db:seed
```

Install frontend dependencies:

```bash
cd final_project/frontend/thp-dev-manual
npm install
```

## Run the Rails backend

```bash
cd final_project/backend/thp_dev_manual_api
rails server
```

The backend runs on:

```txt
http://localhost:3000
```

## Run the React frontend

```bash
cd final_project/frontend/thp-dev-manual
npm run dev
```

The frontend usually runs on:

```txt
http://localhost:5173
```

## Test the app

Test the backend:

```bash
curl http://localhost:3000/api/chapters
curl http://localhost:3000/api/chapters/1
```

Test the frontend:

```bash
cd final_project/frontend/thp-dev-manual
npm run build
npm run lint
```

A manual testing checklist is available at:

```txt
final_project/docs/manual_tests.md
```

## API

Chapters list:

```txt
GET /api/chapters
```

Single chapter:

```txt
GET /api/chapters/:id
```

Main fields:

- `title`
- `module_number`
- `category`
- `summary`
- `content`
- `example`
- `tips`
- `position`

## Current limits

- No authentication.
- No admin interface.
- No search.
- No category filter.
- No dark mode.
- Rails scaffold tests still need to be adapted to the namespaced API routes.

## Possible improvements

- Add keyword search.
- Add a category filter.
- Add reading progress.
- Add a back-to-top button.
- Adapt Rails tests to the `api` namespace.
- Deploy the frontend and backend.

---

# THP Dev Manual

## Présentation

THP Dev Manual est une SPA React reliée à une API Ruby on Rails. L'application prend la forme d'un manuel interactif pour aider les développeurs débutants de The Hacking Project à réviser les étapes d'un projet web complet.

Phrase de présentation :

> Mon outil aide les développeurs débutants à THP à comprendre l'utilisation des 9 modules précédents via ce projet.

## Problème résolu

Un étudiant débutant peut vite se perdre entre la conception, le frontend, le backend, l'API, le debug, Git, la documentation et la présentation. Le projet résout ce problème en organisant les notions dans un ordre clair, sous forme de chapitres pédagogiques.

## Public cible

- Étudiants débutants de The Hacking Project.
- Développeurs débutants qui veulent suivre une méthode simple.
- Étudiants qui préparent une présentation de projet final.

## Fonctionnalités

- Page d'accueil claire.
- Navigation par sections.
- Liste de 9 chapitres pédagogiques.
- Chargement des chapitres depuis une API Rails.
- Affichage du résumé, du contenu, d'un exemple et de conseils pratiques.
- Gestion d'un état de chargement.
- Gestion d'un message d'erreur si l'API est indisponible.
- Checklist de tests manuels.

## Architecture

```txt
final_project/
├── brief.md
├── README.md
├── journal.md
├── frontend/
│   └── thp-dev-manual/
├── backend/
│   └── thp_dev_manual_api/
└── docs/
    ├── manual_tests.md
    ├── pitch.md
    ├── prompts.md
    └── share_message.md
```

## Technologies utilisées

- React
- Vite
- Ruby on Rails API
- SQLite
- rack-cors
- oxlint

## Installation

Installer les dépendances du backend :

```bash
cd final_project/backend/thp_dev_manual_api
bundle install
rails db:create
rails db:migrate
rails db:seed
```

Installer les dépendances du frontend :

```bash
cd final_project/frontend/thp-dev-manual
npm install
```

## Lancer le backend Rails

```bash
cd final_project/backend/thp_dev_manual_api
rails server
```

Le backend tourne sur :

```txt
http://localhost:3000
```

## Lancer le frontend React

```bash
cd final_project/frontend/thp-dev-manual
npm run dev
```

Le frontend tourne normalement sur :

```txt
http://localhost:5173
```

## Tester l'application

Tester le backend :

```bash
curl http://localhost:3000/api/chapters
curl http://localhost:3000/api/chapters/1
```

Tester le frontend :

```bash
cd final_project/frontend/thp-dev-manual
npm run build
npm run lint
```

Une checklist manuelle est disponible dans :

```txt
final_project/docs/manual_tests.md
```

## API utilisée

Liste des chapitres :

```txt
GET /api/chapters
```

Détail d'un chapitre :

```txt
GET /api/chapters/:id
```

Champs principaux :

- `title`
- `module_number`
- `category`
- `summary`
- `content`
- `example`
- `tips`
- `position`

## Limites actuelles

- Pas d'authentification.
- Pas d'interface d'administration.
- Pas de recherche.
- Pas de filtre par catégorie.
- Pas de mode sombre.
- Les tests Rails générés par le scaffold doivent être adaptés aux routes API namespacées.

## Améliorations possibles

- Ajouter une recherche par mot-clé.
- Ajouter un filtre par catégorie.
- Ajouter une progression de lecture.
- Ajouter un bouton retour en haut.
- Adapter les tests Rails au namespace `api`.
- Déployer le frontend et le backend.

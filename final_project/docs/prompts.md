# Prompts utilisés pendant le projet

## Prompt de conception

```txt
Tu es mon assistant pédagogique et technique pour réaliser un projet final de formation web.

Objectif : créer THP Dev Manual, un manuel interactif moderne pour aider les développeurs débutants de THP à comprendre l'utilisation des 9 modules précédents via ce projet.

Commence par analyser le dépôt, puis avance étape par étape. Ne modifie rien sans expliquer l'action et attendre confirmation.
```

## Prompt de cahier des charges

```txt
Propose le contenu complet de final_project/brief.md avant de l'écrire.

Le cahier des charges doit contenir le contexte, le problème, le public cible, le MVP, les limites, les personas, les user stories, les contraintes techniques, l'architecture, le modèle de données, une maquette ASCII, les critères de réussite et les suggestions de l'IA.
```

## Prompt de génération du backend

```txt
Crée une API Rails dans final_project/backend/thp_dev_manual_api.

La ressource principale est Chapter avec les champs title, module_number, category, summary, content, example, tips et position.

Explique chaque commande avant exécution et demande confirmation.
```

## Prompt de routes API

```txt
Adapte les routes Rails pour exposer les chapitres en JSON sous /api/chapters.

Garde seulement index et show pour le MVP.

Explique namespace :api, resources :chapters et only: [:index, :show].
```

## Prompt de génération du frontend

```txt
Crée une application React + Vite dans final_project/frontend/thp-dev-manual.

L'application doit être une SPA lisible de haut en bas avec une navbar, un hero, une section de méthode, une liste de chapitres et un footer.
```

## Prompt de composants React

```txt
Crée les composants Navbar, Hero, ChapterCard, ChaptersList et Footer.

Chaque composant doit avoir un rôle simple et compréhensible.

Évite les abstractions inutiles.
```

## Prompt de connexion API

```txt
Dans ChaptersList.jsx, utilise useState et useEffect pour charger les chapitres depuis http://localhost:3000/api/chapters.

Gère un état de chargement, un état d'erreur et l'affichage des chapitres avec ChapterCard.
```

## Prompt de debug

```txt
Si une erreur apparaît, lis le message exact, identifie la cause racine, explique-la simplement, puis propose une correction.

Ne devine pas le bug.
Ne prétends pas qu'un test a été lancé s'il ne l'a pas été.
```

## Prompt de refactoring

```txt
Garde le code simple, lisible et adapté au MVP.

Ne crée pas d'abstraction si elle ne réduit pas une vraie complexité.

Préserve les fichiers existants sauf confirmation explicite.
```

## Prompt de documentation

```txt
Crée une documentation bilingue anglais puis français.

Le README doit expliquer le problème résolu, le public cible, les fonctionnalités, l'architecture, la stack, l'installation, le lancement du backend, le lancement du frontend, les tests, l'API, les limites actuelles et les améliorations possibles.
```

## Prompt de journal de projet

```txt
Crée final_project/journal.md à la première personne.

Explique pourquoi j'ai choisi cette idée, comment j'ai défini le MVP, comment l'IA m'a aidé, les prompts utiles, les difficultés réellement rencontrées, les corrections, ce que j'ai appris et les améliorations possibles.

Ne prétends pas qu'une difficulté est arrivée si elle n'est pas arrivée.
```

## Prompt de préparation de présentation

```txt
Prépare un pitch simple de 2 à 3 minutes avec la structure :

1. le problème ;
2. la solution ;
3. la démonstration ;
4. les choix techniques ;
5. les limites ;
6. les améliorations possibles.
```

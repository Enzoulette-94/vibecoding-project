# Cahier des charges - THP Dev Manual

## 1. Titre du projet

THP Dev Manual

## 2. Contexte

Ce projet est réalisé dans le cadre du projet final de formation web à The Hacking Project.

Les étudiants ont travaillé plusieurs modules autour de la conception, du frontend, du backend, du debugging, de React, des API, des workflows et de la documentation. Le problème est que ces notions peuvent rester séparées dans l'esprit d'un débutant.

THP Dev Manual propose un manuel interactif qui rassemble ces étapes dans un ordre clair pour aider les étudiants à comprendre comment construire un projet web complet de A à Z.

## 3. Problème à résoudre

Un développeur débutant peut facilement se perdre entre les différentes étapes d'un projet :

- choisir une idée ;
- rédiger un cahier des charges ;
- créer une interface ;
- préparer un backend ;
- connecter une API ;
- déboguer ;
- documenter ;
- présenter le projet.

Le vrai problème n'est pas seulement technique. C'est surtout un problème de méthode : savoir quoi faire, dans quel ordre, et pourquoi.

## 4. Objectif du projet

Créer une application web simple, claire et pédagogique qui aide les étudiants débutants de THP à réviser les 9 modules précédents de la semaine Vibecoding.

Phrase de présentation :

> Mon outil aide les développeurs débutants à THP à comprendre l'utilisation des 9 modules précédents via ce projet.

## 5. Public cible

Le public cible principal est composé d'étudiants débutants de The Hacking Project.

Ils connaissent les bases du développement web, mais ont besoin d'un support structuré pour relier les notions entre elles et construire un projet complet.

## 6. Périmètre MVP

Le MVP doit permettre de :

- afficher une page d'accueil moderne ;
- afficher les chapitres pédagogiques dans l'ordre ;
- naviguer entre les chapitres avec une navbar ;
- afficher pour chaque chapitre :
  - un titre ;
  - un numéro de module ;
  - une catégorie ;
  - un résumé ;
  - un contenu détaillé ;
  - un exemple concret ;
  - des conseils pratiques ;
- consommer les données depuis une API Rails ;
- proposer une interface lisible comme un manuel ;
- documenter le projet en français et en anglais ;
- ajouter une checklist de tests manuels.

## 7. Ce qui ne sera pas développé dans la première version

Les fonctionnalités suivantes ne sont pas prioritaires pour le MVP :

- recherche par mot-clé ;
- filtre par catégorie ;
- mode sombre ;
- progression de lecture ;
- bouton retour en haut ;
- authentification ;
- espace administrateur ;
- édition des chapitres depuis l'interface ;
- déploiement automatique.

Ces fonctionnalités pourront être envisagées uniquement si le MVP est terminé, testé et documenté.

## 8. Personas

### Persona 1 : Étudiant THP débutant

- Besoin : comprendre les étapes d'un projet web complet.
- Difficulté : se perd entre cahier des charges, front, backend, API, debug, documentation et Git.
- Objectif : avoir un manuel clair pour réviser et reproduire la méthode.

### Persona 2 : Développeur débutant autonome

- Besoin : savoir dans quel ordre construire un projet.
- Difficulté : commence souvent par coder sans plan.
- Objectif : suivre une méthode de conception simple et réutilisable.

### Persona 3 : Étudiant qui prépare sa présentation

- Besoin : expliquer clairement son projet final.
- Difficulté : organiser son discours.
- Objectif : avoir une structure problème -> solution -> démo -> conclusion.

## 9. User stories

- En tant qu'étudiant THP, je veux lire les étapes d'un projet de A à Z afin de comprendre comment construire mon propre projet.
- En tant que développeur débutant, je veux voir des exemples concrets afin de mieux appliquer les notions.
- En tant qu'étudiant, je veux naviguer facilement entre les chapitres afin de réviser rapidement un module précis.
- En tant qu'utilisateur, je veux une interface claire et agréable afin de rester concentré pendant la lecture.

## 10. Contraintes techniques

Stack prévue :

- Frontend : React + Vite.
- Backend : Ruby on Rails en mode API.
- Données principales : ressource Chapter.
- Communication : requêtes HTTP entre React et Rails.
- Format de réponse API : JSON.
- Développement local :
  - frontend sur `http://localhost:5173` ;
  - backend sur `http://localhost:3000`.

Le projet doit rester simple, lisible et maintenable.

## 11. Contraintes pédagogiques

Le contenu doit être :

- clair ;
- progressif ;
- adapté aux débutants ;
- concret ;
- orienté méthode ;
- utile pour réviser ;
- suffisamment court pour rester lisible.

Le projet ne doit pas chercher à impressionner techniquement au détriment de la compréhension.

## 12. Architecture prévue

Structure prévue :

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
    ├── prompts.md
    ├── pitch.md
    └── share_message.md
```

Rôle des dossiers :

- `frontend/` contient l'application React visible par l'utilisateur.
- `backend/` contient l'API Rails qui fournit les chapitres.
- `docs/` contient les documents utiles pour présenter, partager et expliquer le projet.
- `brief.md` contient le cahier des charges.
- `README.md` explique comment installer, lancer et comprendre le projet.
- `journal.md` raconte l'avancement du projet à la première personne.

## 13. Modèle de données

Ressource principale : `Chapter`.

Un chapitre représente une étape du manuel.

Champs prévus :

- `title:string` : titre du chapitre.
- `module_number:integer` : numéro du module.
- `category:string` : catégorie du chapitre.
- `summary:text` : résumé court.
- `content:text` : contenu pédagogique détaillé.
- `example:text` : exemple concret.
- `tips:text` : conseils pratiques.
- `position:integer` : ordre d'affichage.

Exemples de chapitres :

1. Module 01 - Choisir l'idée et planifier
2. Module 02 - Rédiger le cahier des charges
3. Module 03 - Construire une première page web
4. Module 04 - Préparer le backend Rails
5. Module 05 - Déboguer et nettoyer le code
6. Module 06 - Créer une app React avec Vite
7. Module 07 - Définir un mini-workflow
8. Module 08 - Lier le front et le back avec une API
9. Module 09 - Finaliser, documenter et présenter

## 14. Maquette ASCII

```txt
+--------------------------------------------------+
| THP Dev Manual                                   |
| Accueil | Modules | Méthode | À propos           |
+--------------------------------------------------+

[Hero]
Construis ton projet dev de A à Z
Un manuel simple pour réviser les modules Vibecoding.

[Liste des chapitres]
----------------------------------------------------
Module 01 - Cahier des charges
Résumé...
Exemple concret...
Conseils...
----------------------------------------------------
Module 02 - Front HTML/CSS/JS
Résumé...
Exemple concret...
Conseils...
----------------------------------------------------

[Footer]
README | Journal | GitHub
```

## 15. Critères de réussite

Le projet sera considéré comme réussi si :

- l'application React se lance correctement ;
- l'API Rails se lance correctement ;
- les chapitres sont fournis par l'API ;
- le frontend affiche les chapitres dans l'ordre ;
- la navigation permet d'accéder rapidement aux chapitres ;
- l'interface est claire et agréable à lire ;
- le projet contient une documentation en français et en anglais ;
- une checklist de tests manuels est disponible ;
- le code reste simple, compréhensible et adapté au niveau du projet.

## 16. Suggestions de l'IA avec décisions acceptées/refusées

### Suggestion 1 : Ajouter un filtre par catégorie

Décision : refusée pour le MVP, gardée en bonus.

Raison : utile, mais pas indispensable pour valider l'objectif principal. Le MVP doit d'abord permettre de lire les chapitres dans l'ordre.

### Suggestion 2 : Ajouter un mode sombre

Décision : refusée pour le MVP, gardée en bonus.

Raison : agréable, mais secondaire. Cela ajoute du travail CSS et des tests visuels sans résoudre le problème principal.

### Suggestion 3 : Ajouter une checklist de test manuel

Décision : acceptée.

Raison : elle aide à vérifier simplement que le projet fonctionne, même sans tests automatisés complexes.

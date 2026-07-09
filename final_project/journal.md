# Journal de projet - THP Dev Manual

## Pourquoi j'ai choisi cette idée

J'ai choisi de créer THP Dev Manual parce que le projet final devait m'aider à réutiliser les modules précédents de la semaine Vibecoding. L'idée est simple : construire un manuel interactif pour aider les développeurs débutants de THP à comprendre les étapes d'un projet web complet.

Le vrai problème que je veux résoudre n'est pas seulement technique. Un débutant peut savoir écrire un peu de HTML, de CSS, de JavaScript, de Rails ou de React, mais se perdre dans l'ordre de construction d'un projet. Mon objectif est donc de proposer un support clair qui explique quoi faire, dans quel ordre, et pourquoi.

## Comment j'ai défini le MVP

J'ai volontairement limité le MVP à une application de lecture. Le projet doit afficher des chapitres pédagogiques, les récupérer depuis une API Rails, et les présenter dans une interface React lisible.

Le MVP contient :

- une page d'accueil ;
- une navigation simple ;
- une section méthode ;
- une liste de 9 chapitres ;
- une API Rails pour fournir les chapitres ;
- une checklist de tests manuels ;
- une documentation bilingue.

J'ai refusé les bonus au départ, comme la recherche, le filtre par catégorie, le mode sombre ou la progression de lecture. Ces idées sont intéressantes, mais elles ne sont pas nécessaires pour valider le coeur du projet.

## Comment l'IA m'a aidé

L'IA m'a aidé à structurer le projet étape par étape. Elle m'a surtout aidé à :

- clarifier le cahier des charges ;
- définir une architecture simple ;
- créer l'API Rails ;
- préparer les routes API ;
- écrire les seeds ;
- connecter React à Rails ;
- documenter les choix techniques ;
- garder le scope MVP sous contrôle.

L'IA n'a pas remplacé la validation technique. À chaque étape importante, j'ai vérifié les commandes, les fichiers générés et les erreurs réelles.

## Prompts utiles

Les prompts les plus utiles ont été ceux qui forçaient une progression étape par étape :

- analyser le dépôt sans modifier ;
- proposer le contenu du cahier des charges avant création ;
- expliquer les commandes Rails avant exécution ;
- créer une API Rails simple ;
- connecter React à une API ;
- documenter les tests manuels ;
- garder une trace honnête des difficultés.

Ces prompts m'ont aidé à éviter de tout faire d'un coup.

## Difficultés rencontrées

La première difficulté a été le dossier de départ. Le dossier courant n'était pas encore un dépôt Git et ne s'appelait pas `vibecoding-project`. J'ai donc dû confirmer que je pouvais continuer dans ce dossier et l'initialiser en dépôt Git.

J'ai aussi rencontré des problèmes de permissions avec Git. Certaines commandes comme `git init`, le renommage de branche et le commit ont nécessité une autorisation supplémentaire pour écrire dans `.git`.

Lors de la création du backend Rails, `rails new` a généré un dépôt Git interne dans le dossier Rails. Ce n'était pas souhaitable, parce que le projet doit être suivi par un seul dépôt Git principal. J'ai donc supprimé uniquement ce `.git` interne après confirmation.

`bundle install` a d'abord échoué à cause de l'accès réseau vers RubyGems. Après autorisation réseau, l'installation a réussi.

Les tests Rails générés par le scaffold ont échoué après le passage aux routes API `api/chapters`. La cause est claire : les tests scaffold ciblent les anciennes routes `/chapters`, alors que le MVP utilise maintenant `/api/chapters`. Cette dette technique est notée dans le README.

Pour le frontend, `npm install` est d'abord resté bloqué sans sortie. Je l'ai interrompu proprement, puis relancé avec autorisation réseau. L'installation a ensuite réussi.

Pendant le test d'intégration, le port `5173` était déjà occupé par un ancien serveur Vite d'un autre projet. J'ai d'abord testé sur un autre port, puis j'ai arrêté l'ancien serveur pour tester THP Dev Manual sur le port prévu.

## Comment j'ai corrigé les erreurs

Pour chaque problème, j'ai essayé de vérifier la cause avant de modifier :

- pour Git, j'ai vérifié le statut et la branche ;
- pour Rails, j'ai vérifié les routes avec `rails routes` ;
- pour les données, j'ai vérifié `Chapter.count` ;
- pour l'API, j'ai testé avec `curl` ;
- pour CORS, j'ai vérifié les en-têtes HTTP ;
- pour React, j'ai lancé `npm run build` et `npm run lint`.

Cette méthode m'a évité de corriger au hasard.

## Ce que j'ai appris

J'ai appris qu'un projet web complet demande autant de méthode que de code. Le cahier des charges, l'architecture, les routes, les données de test, CORS, les scripts de vérification et la documentation font partie du projet autant que les composants React.

J'ai aussi compris l'importance de faire des commits logiques. Le premier commit a sauvegardé le cahier des charges et le backend API de base. Le frontend pourra ensuite être committé séparément.

## Améliorations possibles

Si le MVP est terminé et stable, je pourrais ajouter :

- une recherche par mot-clé ;
- un filtre par catégorie ;
- un bouton retour en haut ;
- une progression de lecture ;
- des tests Rails adaptés au namespace API ;
- un déploiement.

Je ne veux pas ajouter ces fonctionnalités avant d'avoir terminé la documentation principale et les livrables attendus.

# Checklist de tests manuels

## Backend

- [ ] Le serveur Rails démarre.
- [ ] `GET /api/chapters` renvoie du JSON.
- [ ] Les chapitres sont dans le bon ordre.
- [ ] Chaque chapitre contient un titre, un résumé, un exemple et des conseils.

## Frontend

- [ ] Le serveur Vite démarre.
- [ ] La page d'accueil s'affiche.
- [ ] La navbar permet d'accéder aux sections.
- [ ] Les chapitres sont affichés.
- [ ] Le message de chargement apparaît si nécessaire.
- [ ] Un message d'erreur s'affiche si l'API est indisponible.

## Intégration

- [ ] React appelle bien Rails.
- [ ] CORS ne bloque pas les requêtes.
- [ ] Les données affichées viennent bien de l'API.

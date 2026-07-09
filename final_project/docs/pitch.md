# Pitch oral - THP Dev Manual

## 1. Probleme

Quand on debute en developpement web, le plus difficile n'est pas toujours d'ecrire une ligne de code. Le plus difficile, c'est souvent de savoir dans quel ordre avancer.

On peut avoir vu du HTML, du CSS, JavaScript, Rails, React, les API, Git ou le debug, mais ne pas encore savoir comment assembler tout ca dans un vrai projet.

C'est le probleme que j'ai voulu traiter avec THP Dev Manual.

## 2. Solution

THP Dev Manual est un manuel interactif pour les etudiants debutants de The Hacking Project.

L'objectif est simple : aider a reviser les grandes etapes d'un projet de developpement, depuis l'idee et le cahier des charges jusqu'a la documentation et la presentation finale.

Le projet est volontairement centre sur un MVP clair. Il ne cherche pas a tout faire. Il affiche 9 chapitres pedagogiques, chacun avec un resume, du contenu, un exemple concret et des conseils pratiques.

## 3. Demo

Dans la demonstration, je montre d'abord la page d'accueil et la navigation.

Ensuite, je vais dans la section des chapitres. Les donnees ne sont pas ecrites directement dans React : elles viennent d'une API Ruby on Rails.

Le frontend React appelle donc le backend Rails avec une requete HTTP, puis affiche les chapitres dans l'ordre.

Si l'API est indisponible, l'application prevoit aussi un message d'erreur. C'est important, parce qu'une application doit gerer les cas ou tout ne fonctionne pas parfaitement.

## 4. Ce que j'ai appris

Ce projet m'a surtout appris qu'un projet web complet ne se limite pas au code visible dans l'interface.

Il faut aussi penser au cahier des charges, a la structure des dossiers, au modele de donnees, aux routes API, aux seeds, a CORS, aux tests manuels, a Git et a la documentation.

J'ai aussi appris a limiter le scope. Des fonctionnalites comme la recherche, le filtre ou le mode sombre seraient utiles, mais elles ne sont pas indispensables pour valider le MVP.

## 5. Conclusion

THP Dev Manual est donc un projet simple, mais complet : une SPA React, une API Rails, des donnees pedagogiques, une documentation et une checklist de tests.

L'objectif n'etait pas de construire une application parfaite, mais de construire une base claire, fonctionnelle et comprehensible, que je pourrais ameliorer ensuite.

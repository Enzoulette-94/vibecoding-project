chapters = [
  {
    module_number: 1,
    position: 1,
    title: "Module 01 - Choisir l'idée et planifier",
    category: "conception",
    summary: "Apprendre à partir d'un besoin réel, choisir une idée simple et définir une première direction de projet.",
    content: "Avant de coder, il faut comprendre le problème que l'on veut résoudre. Cette étape sert à clarifier l'idée, le public cible, la douleur utilisateur et les limites du projet. Un bon projet débutant ne cherche pas à tout faire. Il répond à un besoin précis avec une version simple mais fonctionnelle.",
    example: "Au lieu de créer une plateforme complète pour apprendre le développement, on choisit un manuel interactif qui explique les étapes d'un projet web aux étudiants THP.",
    tips: "Commence par écrire le problème en une phrase. Identifie un seul public cible. Refuse les fonctionnalités qui ne servent pas directement le MVP."
  },
  {
    module_number: 2,
    position: 2,
    title: "Module 02 - Rédiger le cahier des charges",
    category: "conception",
    summary: "Transformer une idée en document clair avec objectifs, contraintes, user stories et critères de réussite.",
    content: "Le cahier des charges sert de boussole. Il décrit ce que le projet doit faire, pour qui, avec quelles limites et selon quels critères de réussite. Il évite de commencer par le code sans direction claire.",
    example: "Pour THP Dev Manual, le cahier des charges précise que l'application doit afficher 9 chapitres pédagogiques consommés depuis une API Rails.",
    tips: "Écris le MVP avant les bonus. Ajoute ce qui ne sera pas développé. C'est une protection contre le scope creep."
  },
  {
    module_number: 3,
    position: 3,
    title: "Module 03 - Construire une première page web",
    category: "frontend",
    summary: "Créer une interface lisible en séparant structure, style et comportement.",
    content: "Une page web claire repose sur une bonne structure. Le HTML organise le contenu, le CSS gère l'apparence et JavaScript ajoute de l'interaction. Même avec React plus tard, cette séparation reste importante.",
    example: "La page d'accueil du manuel peut contenir une navbar, une section d'introduction, une liste de chapitres et un footer.",
    tips: "Priorise la lisibilité. Utilise des titres clairs, des espacements réguliers et une hiérarchie visuelle simple."
  },
  {
    module_number: 4,
    position: 4,
    title: "Module 04 - Préparer le backend Rails",
    category: "backend",
    summary: "Créer une API Rails simple capable de gérer les données principales du projet.",
    content: "Le backend est la partie qui stocke et fournit les données. Dans ce projet, Rails sert d'API : il ne génère pas l'interface finale, il renvoie des chapitres au format JSON pour que React les affiche.",
    example: "La ressource principale est Chapter, avec un titre, un numéro de module, une catégorie, un résumé, du contenu, un exemple, des conseils et une position.",
    tips: "Ne multiplie pas les modèles au début. Une ressource principale bien pensée suffit souvent pour un MVP."
  },
  {
    module_number: 5,
    position: 5,
    title: "Module 05 - Déboguer et nettoyer le code",
    category: "debug",
    summary: "Identifier les causes racines des erreurs et garder un code compréhensible.",
    content: "Déboguer ne consiste pas à essayer des corrections au hasard. Il faut lire le message d'erreur, repérer le fichier concerné, comprendre la cause, puis vérifier que la correction fonctionne.",
    example: "Si React ne reçoit pas les chapitres, il faut vérifier l'URL appelée, les routes Rails, le contrôleur API, les données en base et les erreurs CORS.",
    tips: "Lis toujours l'erreur exacte. Change une seule chose à la fois. Vérifie après chaque correction."
  },
  {
    module_number: 6,
    position: 6,
    title: "Module 06 - Créer une app React avec Vite",
    category: "frontend",
    summary: "Mettre en place une SPA React rapide et organiser les composants simplement.",
    content: "React permet de construire une interface découpée en composants. Vite fournit un environnement de développement rapide. Pour un MVP, il vaut mieux avoir peu de composants bien nommés qu'une architecture trop compliquée.",
    example: "L'application peut contenir un composant App, une Navbar, une section Hero et une liste de ChapterCard.",
    tips: "Garde les composants petits. N'ajoute pas de state global si un simple state local suffit."
  },
  {
    module_number: 7,
    position: 7,
    title: "Module 07 - Définir un mini-workflow",
    category: "workflow",
    summary: "Avancer avec une méthode simple : planifier, coder, tester, documenter et commit.",
    content: "Un workflow aide à travailler proprement. L'objectif n'est pas d'avoir une méthode lourde, mais d'éviter le chaos. Chaque étape doit produire un résultat vérifiable.",
    example: "Pour chaque fonctionnalité : expliquer l'objectif, modifier peu de fichiers, tester manuellement, puis faire un commit clair.",
    tips: "Fais des commits logiques. Ne mélange pas backend, frontend et documentation dans un seul gros commit si tu peux l'éviter."
  },
  {
    module_number: 8,
    position: 8,
    title: "Module 08 - Lier le front et le back avec une API",
    category: "intégration",
    summary: "Comprendre comment React récupère des données depuis Rails avec des requêtes HTTP.",
    content: "Le frontend et le backend communiquent via HTTP. Rails expose des endpoints JSON, et React les appelle avec fetch. Cette séparation rend le projet plus proche d'une architecture web moderne.",
    example: "React appelle GET http://localhost:3000/api/chapters, reçoit un tableau JSON, puis affiche les chapitres dans l'ordre.",
    tips: "Teste d'abord l'API seule dans le navigateur ou avec curl. Ensuite seulement, connecte React."
  },
  {
    module_number: 9,
    position: 9,
    title: "Module 09 - Finaliser, documenter et présenter",
    category: "documentation",
    summary: "Préparer une version propre, testée, documentée et présentable.",
    content: "Finaliser un projet ne veut pas dire ajouter beaucoup de fonctionnalités. Cela veut dire stabiliser le MVP, corriger les erreurs visibles, écrire une documentation claire et préparer une démonstration compréhensible.",
    example: "Le README explique comment lancer Rails et React. Le pitch présente le problème, la solution, la démo et les limites du MVP.",
    tips: "Prépare une checklist de tests manuels. Pendant la présentation, montre d'abord le besoin, puis le fonctionnement."
  }
]

chapters.each do |attributes|
  chapter = Chapter.find_or_initialize_by(module_number: attributes[:module_number])
  chapter.update!(attributes)
end

puts "#{Chapter.count} chapters available."

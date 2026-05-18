# Nettoyage des anciennes données
Choice.destroy_all
Question.destroy_all
PersonalityProfile.destroy_all

# Création des questions et des choix
questions = [
  {
    content: "Dans un projet de groupe, vous êtes plutôt :",
    choices: [
      ["Celui qui prend les décisions", "D"],
      ["Celui qui motive les autres", "I"],
      ["Celui qui soutient l’équipe", "S"],
      ["Celui qui organise les détails", "C"]
    ]
  },
  {
    content: "Face à un problème difficile :",
    choices: [
      ["J’agis immédiatement", "D"],
      ["Je cherche de l’aide ou j’en parle", "I"],
      ["Je reste calme et patient", "S"],
      ["J’analyse toutes les possibilités", "C"]
    ]
  },
  {
    content: "Ce qui vous motive le plus :",
    choices: [
      ["Gagner et réussir", "D"],
      ["Être apprécié", "I"],
      ["Aider les autres", "S"],
      ["Faire les choses parfaitement", "C"]
    ]
  },
  {
    content: "Quand vous rencontrez quelqu’un :",
    choices: [
      ["Je vais droit au but", "D"],
      ["Je suis très sociable", "I"],
      ["J’écoute beaucoup", "S"],
      ["J’observe avant de parler", "C"]
    ]
  },
  {
    content: "Votre plus grande qualité :",
    choices: [
      ["Leadership", "D"],
      ["Enthousiasme", "I"],
      ["Loyauté", "S"],
      ["Rigueur", "C"]
    ]
  }
]

questions.each_with_index do |question_data, index|
  question = Question.create!(
    content: question_data[:content],
    position: index + 1
  )

  question_data[:choices].each do |choice_content, disc_type|
    question.choices.create!(
      content: choice_content,
      disc_type: disc_type
    )
  end
end

puts "Questions et choix créés avec succès."




profiles = [
  {
    code: "D-I",
    name: "Dominant–Influent",
    description: "Leader charismatique, ambitieux et énergique.",
    strengths: "Leadership, persuasion, motivation",
    weaknesses: "Impatience, impulsivité",
    advice: "Développer l’écoute et la patience.",
    careers: "Manager, entrepreneur, commercial"
  },

  {
    code: "D-S",
    name: "Dominant–Stable",
    description: "Leader calme et déterminé.",
    strengths: "Persévérance, stabilité, responsabilité",
    weaknesses: "Rigidité, difficulté à déléguer",
    advice: "Être plus flexible face au changement.",
    careers: "Chef de projet, superviseur"
  },

  {
    code: "D-C",
    name: "Dominant–Consciencieux",
    description: "Personne exigeante et stratégique.",
    strengths: "Analyse, précision, leadership",
    weaknesses: "Perfectionnisme, critique excessive",
    advice: "Accepter davantage les imperfections.",
    careers: "Ingénieur, analyste, directeur technique"
  },

  {
    code: "I-D",
    name: "Influent–Dominant",
    description: "Communicatif et ambitieux.",
    strengths: "Communication, enthousiasme, influence",
    weaknesses: "Impulsivité, impatience",
    advice: "Mieux structurer les décisions.",
    careers: "Marketing, vente, communication"
  },

  {
    code: "I-S",
    name: "Influent–Stable",
    description: "Personne chaleureuse et sociable.",
    strengths: "Empathie, optimisme, écoute",
    weaknesses: "Difficulté à dire non",
    advice: "Apprendre à poser des limites.",
    careers: "RH, coaching, enseignement"
  },

  {
    code: "I-C",
    name: "Influent–Consciencieux",
    description: "Créatif mais organisé.",
    strengths: "Créativité, communication, précision",
    weaknesses: "Stress face aux critiques",
    advice: "Développer la confiance en soi.",
    careers: "Designer, consultant, rédacteur"
  },

  {
    code: "S-D",
    name: "Stable–Dominant",
    description: "Patient mais capable de diriger.",
    strengths: "Calme, persévérance, stabilité",
    weaknesses: "Résistance au changement",
    advice: "Sortir davantage de la zone de confort.",
    careers: "Coordinateur, gestionnaire"
  },

  {
    code: "S-I",
    name: "Stable–Influent",
    description: "Personne coopérative et positive.",
    strengths: "Travail d’équipe, soutien, sociabilité",
    weaknesses: "Manque d’affirmation",
    advice: "Développer l’assurance personnelle.",
    careers: "Assistant social, éducateur"
  },

  {
    code: "S-C",
    name: "Stable–Consciencieux",
    description: "Méthodique et fiable.",
    strengths: "Organisation, patience, rigueur",
    weaknesses: "Difficulté avec l’imprévu",
    advice: "Être plus adaptable.",
    careers: "Comptable, administratif"
  },

  {
    code: "C-D",
    name: "Consciencieux–Dominant",
    description: "Stratégique et discipliné.",
    strengths: "Analyse, organisation, décision",
    weaknesses: "Exigence excessive",
    advice: "Faire davantage confiance aux autres.",
    careers: "Ingénieur, auditeur"
  },

  {
    code: "C-I",
    name: "Consciencieux–Influent",
    description: "Analytique mais sociable.",
    strengths: "Communication, logique, précision",
    weaknesses: "Sur-analyse",
    advice: "Prendre des décisions plus rapidement.",
    careers: "Consultant, analyste"
  },

  {
    code: "C-S",
    name: "Consciencieux–Stable",
    description: "Prudent et très organisé.",
    strengths: "Fiabilité, patience, précision",
    weaknesses: "Difficulté à prendre des risques",
    advice: "Accepter davantage l’incertitude.",
    careers: "Qualité, finance, administration"
  }
]

profiles.each do |profile|
  PersonalityProfile.create!(profile)
end
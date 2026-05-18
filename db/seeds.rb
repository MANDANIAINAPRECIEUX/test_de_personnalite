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



PersonalityProfile.create!(
  code: "D-I",
  name: "Dominant–Influent",
  description: "Personne ambitieuse, énergique et persuasive.",
  strengths: "Leadership, motivation, communication",
  weaknesses: "Impatience, impulsivité",
  advice: "Apprendre à écouter davantage les autres.",
  careers: "Manager, entrepreneur, commercial"
)

PersonalityProfile.create!(
  code: "S-C",
  name: "Stable–Consciencieux",
  description: "Personne calme, organisée et méthodique.",
  strengths: "Patience, précision, fiabilité",
  weaknesses: "Difficulté à gérer le changement",
  advice: "Développer plus de flexibilité.",
  careers: "Comptable, analyste, gestionnaire"
)
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
stars = [
  { name: "Solaria", type: "Etoile", description: "Source d'énergie infinie, idéale pour alimenter de vastes colonies humaines.\n\nBienfait pour l'humain : Fournit une énergie propre et durable.", price: 500 },
  { name: "Orionis", type: "Etoile", description: "Étoile aux capacités de régénération des tissus humains.\n\nBienfait pour l'humain : Accélère la guérison des blessures graves.", price: 800 },
  { name: "Lunaris", type: "Satellite", description: "Satellite naturel possédant une gravité idéale pour la construction de stations orbitales.\n\nBienfait pour l'humain : Facilite la vie dans l'espace et permet des habitations durables.", price: 300 },
  { name: "Astrax", type: "Planète", description: "Planète riche en minéraux rares.\n\nBienfait pour l'humain : Fournit des ressources essentielles pour la construction d'infrastructures spatiales.", price: 1200 },
  { name: "Velaris", type: "Comète", description: "Comète contenant des cristaux d'énergie pure.\n\nBienfait pour l'humain : Alimenterait des vaisseaux spatiaux pour des voyages interstellaires.", price: 1000 },
  { name: "Gorgona", type: "Trou Noir", description: "Trou noir mystérieux dont la gravité permet de ralentir le temps.\n\nBienfait pour l'humain : Utilisé pour les expérimentations scientifiques sur le voyage dans le temps.", price: 1500 },
  { name: "Astrovia", type: "Astéroïde", description: "Astéroïde contenant des matériaux rares, utilisés pour l'amélioration de la technologie spatiale.\n\nBienfait pour l'humain : Améliore la durabilité des engins spatiaux.", price: 600 },
  { name: "Nebulon", type: "Etoile", description: "Étoile entourée de gaz interstellaires mystérieux, utilisée pour produire des médicaments.\n\nBienfait pour l'humain : Aide à combattre des maladies inconnues sur Terre.", price: 700 },
  { name: "Jovian", type: "Planète", description: "Planète géante gazeuse avec des tempêtes énergétiques.\n\nBienfait pour l'humain : Source d'énergie pour des projets d'envergure.", price: 1400 },
  { name: "Celestria", type: "Comète", description: "Comète riche en glace d'eau.\n\nBienfait pour l'humain : Fournit de l'eau potable pour les colonies spatiales.", price: 450 },
  { name: "Xandar", type: "Astéroïde", description: "Astéroïde recouvert de cristaux précieux, utilisé pour des applications en haute technologie.\n\nBienfait pour l'humain : Source de matériaux pour les technologies avancées.", price: 700 },
  { name: "Aurora", type: "Etoile", description: "Étoile brillante située près du centre galactique.\n\nBienfait pour l'humain : Aide à la navigation spatiale grâce à ses signaux lumineux.", price: 1000 },
  { name: "Zenith", type: "Planète", description: "Planète idéale pour l'agriculture spatiale, offrant un climat contrôlable.\n\nBienfait pour l'humain : Permet de produire de la nourriture en dehors de la Terre.", price: 1100 },
  { name: "Vortex", type: "Trou Noir", description: "Trou noir utilisé pour étudier l'éventuelle existence d'autres dimensions.\n\nBienfait pour l'humain : Ouvre la voie à la compréhension des lois de l'univers.", price: 1600 },
  { name: "Chrona", type: "Satellite", description: "Satellite permettant de synchroniser les horloges atomiques de l'univers.\n\nBienfait pour l'humain : Crucial pour le fonctionnement des communications intergalactiques.", price: 350 },
  { name: "Andromeda", type: "Etoile", description: "Une étoile géante qui, par sa luminosité, aide à maintenir l'équilibre écologique dans les zones rurales de la Terre.\n\nBienfait pour l'humain : Améliore la photosynthèse dans les fermes terrestres.", price: 900 },
  { name: "Cassiopea", type: "Comète", description: "Comète riche en métaux rares et en gaz nobles.\n\nBienfait pour l'humain : Source idéale de matériaux pour les technologies énergétiques.", price: 750 },
  { name: "Quasar", type: "Etoile", description: "Étoile extrêmement énergétique, utilisée dans la recherche en physique quantique.\n\nBienfait pour l'humain : Aide à comprendre l'énergie noire et les origines de l'univers.", price: 2000 },
  { name: "Nebula", type: "Astéroïde", description: "Astéroïde composé de gaz et de poussière interstellaire.\n\nBienfait pour l'humain : Prise d'échantillons permet d'étudier les origines de la vie.", price: 850 },
  { name: "Zirconia", type: "Planète", description: "Planète riche en zirconium, utilisé pour fabriquer des matériaux de construction de vaisseaux spatiaux.\n\nBienfait pour l'humain : Fournit des matériaux ultra-résistants pour l'exploration interplanétaire.", price: 1300 }
]

# Create stars
stars.each do |star|
  Star.create!(star)
end

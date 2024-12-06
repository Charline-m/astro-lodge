# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Star.destroy_all
User.destroy_all

users = [
  User.create!(name: "bob", email: "user1@test.com", password: "123456"),
  User.create!(name: "paul", email: "user2@test.com", password: "123456")
]

stars = [
  { name: "Solaria", category: "Etoile", description: "Source d'énergie infinie, idéale pour alimenter de vastes colonies humaines.\n\nBienfait pour l'humain : Fournit une énergie propre et durable.", price: 500, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSmveKRd7ooSAVrpEllR3L6x1N0LsXq6dX8Q&s" },
  { name: "Orionis", category: "Etoile", description: "Étoile aux capacités de régénération des tissus humains.\n\nBienfait pour l'humain : Accélère la guérison des blessures graves.", price: 800, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkGLTd6j-87T56RGVlX_H0IfzH6WRIghYeg0jcQXoW58zwLpIzxb5ekjXz41w7cHZxtWQ&usqp=CAU" },
  { name: "Lunaris", category: "Satellite", description: "Satellite naturel possédant une gravité idéale pour la construction de stations orbitales.\n\nBienfait pour l'humain : Facilite la vie dans l'espace et permet des habitations durables.", price: 300, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRf1RdXdcminITOA_jBHVrjTsGbMpK0TFF6-1f4NVrkEsgf9mH6R-CSA0LuvQlqBfO1y40&usqp=CAU" },
  { name: "Astrax", category: "Planète", description: "Planète riche en minéraux rares.\n\nBienfait pour l'humain : Fournit des ressources essentielles pour la construction d'infrastructures spatiales.", price: 1200, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAQObIG-5JWI1bgOsVGwquMh__nrznBJFUM995-k9T1r9Kq59Ynqv4P9xcvCKNUaeVGdA&usqp=CAU" },
  { name: "Velaris", category: "Comète", description: "Comète contenant des cristaux d'énergie pure.\n\nBienfait pour l'humain : Alimenterait des vaisseaux spatiaux pour des voyages interstellaires.", price: 1000, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6uTfF9zkjJ7LhEDqIrGNTXQLfyrPbLD7y0uQaO49VNYyf8KqfDIIxK7xVh1pYqOSwc6o&usqp=CAU" },
  { name: "Gorgona", category: "Trou Noir", description: "Trou noir mystérieux dont la gravité permet de ralentir le temps.\n\nBienfait pour l'humain : Utilisé pour les expérimentations scientifiques sur le voyage dans le temps.", price: 1500, image_url: "https://i.computer-bild.de/imgs/1/5/2/6/7/4/2/7/Firefly-Erstelle-mir-ein-Bild-von-einem-neuen-Planeten.-Der-Planet-ist-sehr-farbenfroh-und-sieht-ein_1-d117279849f54f1a.jpg" },
  { name: "Astrovia", category: "Astéroïde", description: "Astéroïde contenant des matériaux rares, utilisés pour l'amélioration de la technologie spatiale.\n\nBienfait pour l'humain : Améliore la durabilité des engins spatiaux.", price: 600, image_url: "https://external-preview.redd.it/AMIOmtSuif0JgrbsOJANnTt1DcEzuzJ846aeoPnNviE.jpg?width=640&crop=smart&auto=webp&s=662567642f0ad47d15b9980d0460650bded5423a" },
  { name: "Nebulon", category: "Etoile", description: "Étoile entourée de gaz interstellaires mystérieux, utilisée pour produire des médicaments.\n\nBienfait pour l'humain : Aide à combattre des maladies inconnues sur Terre.", price: 700, image_url: "https://t4.ftcdn.net/jpg/01/99/12/75/360_F_199127515_9yC0TpdYCgQPknOTlo4KPuCvzyyuJwXJ.jpg" },
  { name: "Jovian", category: "Planète", description: "Planète géante gazeuse avec des tempêtes énergétiques.\n\nBienfait pour l'humain : Source d'énergie pour des projets d'envergure.", price: 1400, image_url: "https://kinderzeitung.kleinezeitung.at/wp-content/uploads/2024/04/adobestock_245608462-scaled.jpeg" },
  { name: "Celestria", category: "Comète", description: "Comète riche en glace d'eau.\n\nBienfait pour l'humain : Fournit de l'eau potable pour les colonies spatiales.", price: 450, image_url: "https://t4.ftcdn.net/jpg/02/38/89/45/360_F_238894523_AppCGf61ebqIYZNWJOf0M0m9APW02Rj3.jpg" },
  { name: "Xandar", category: "Astéroïde", description: "Astéroïde recouvert de cristaux précieux, utilisé pour des applications en haute technologie.\n\nBienfait pour l'humain : Source de matériaux pour les technologies avancées.", price: 700, image_url: "https://asset.kompas.com/crops/QuSr0dcs8CrAi8E3t-guEjVBvTo=/116x69:866x569/1200x800/data/photo/2020/09/16/5f60fd5d5e1a4.jpg" },
  { name: "Aurora", category: "Etoile", description: "Étoile brillante située près du centre galactique.\n\nBienfait pour l'humain : Aide à la navigation spatiale grâce à ses signaux lumineux.", price: 1000, image_url: "https://static.vecteezy.com/ti/photos-gratuite/p1/22175577-planetes-et-galaxies-etabli-avec-generatif-ai-la-technologie-gratuit-photo.jpg" },
  { name: "Zenith", category: "Planète", description: "Planète idéale pour l'agriculture spatiale, offrant un climat contrôlable.\n\nBienfait pour l'humain : Permet de produire de la nourriture en dehors de la Terre.", price: 1100, image_url: "https://t4.ftcdn.net/jpg/02/77/98/67/360_F_277986727_L2PWXsvn1LOyBYGYu2AJ0nABo5eQtFV4.jpg" },
  { name: "Vortex", category: "Trou Noir", description: "Trou noir utilisé pour étudier l'éventuelle existence d'autres dimensions.\n\nBienfait pour l'humain : Ouvre la voie à la compréhension des lois de l'univers.", price: 1600, image_url: "https://us.123rf.com/450wm/mdsumonrf/mdsumonrf2009/mdsumonrf200900068/155922799-plan%C3%A8te-v%C3%A9nus.jpg?ver=6" },
  { name: "Chrona", category: "Satellite", description: "Satellite permettant de synchroniser les horloges atomiques de l'univers.\n\nBienfait pour l'humain : Crucial pour le fonctionnement des communications intergalactiques.", price: 350, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5j2H4YQhbclnxvC3SBOavR7aPjLAZrkNmFGfBYOhMTu8bQytZKOQ0DGQ6cDI3ip6CJZo&usqp=CAU" },
  { name: "Andromeda", category: "Etoile", description: "Une étoile géante qui, par sa luminosité, aide à maintenir l'équilibre écologique dans les zones rurales de la Terre.\n\nBienfait pour l'humain : Améliore la photosynthèse dans les fermes terrestres.", price: 900, image_url: "https://img.freepik.com/photos-gratuite/belles-planetes-dans-espace_23-2149288530.jpg?w=360" },
  { name: "Cassiopea", category: "Comète", description: "Comète riche en métaux rares et en gaz nobles.\n\nBienfait pour l'humain : Source idéale de matériaux pour les technologies énergétiques.", price: 750, image_url: "https://img.freepik.com/photos-gratuite/belles-planetes-dans-espace_23-2149288532.jpg?w=360" },
  { name: "Quasar", category: "Etoile", description: "Étoile extrêmement énergétique, utilisée dans la recherche en physique quantique.\n\nBienfait pour l'humain : Aide à comprendre l'énergie noire et les origines de l'univers.", price: 2000, image_url: "https://img.freepik.com/photos-premium/planete-mercure-planete-etrangere-isolee-transpare_548373-3038.jpg?semt=ais_hybrid" },
  { name: "Nebula", category: "Astéroïde", description: "Astéroïde composé de gaz et de poussière interstellaire.\n\nBienfait pour l'humain : Prise d'échantillons permet d'étudier les origines de la vie.", price: 850, image_url: "https://i.pinimg.com/originals/69/8b/db/698bdbb69e98e9c4c2a4d1a277a5f90f.jpg" },
  { name: "Zirconia", category: "Planète", description: "Planète riche en zirconium, utilisé pour fabriquer des matériaux de construction de vaisseaux spatiaux.\n\nBienfait pour l'humain : Fournit des matériaux ultra-résistants pour l'exploration interplanétaire.", price: 1300, image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLnvqZjZFGxGg4qKBX_sdPGTqnzbLvBLCjKrzzSbrrqdn4eC-oGqL7KsT2ke5_1xH96cE&usqp=CAU" }
]
puts "création de star"
# Create stars
stars.each do |star|
  newstar = Star.new(star)
  newstar.user = users.sample
  newstar.save!
end

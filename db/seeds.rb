# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


area_attributes = [
  {
    name: "Rochers de Marche-les-Dames",
    description: "Marche-les-Dames, Beez (Namur), Part of the crags is situated inside a military camp. Access granted for Belgian citizens in posession of their ID & membership card.
    Climbing is forbidden on the crags behind the village.",
    location: "Marche-les-Dames, Beez (Namur)",
    latitude: 15.0000000,
    longitude: 32.0000000
  },
  {
    name: "Rochers de Freyr",
    description: "Falmignoul, Freyr, Dominating the Meuse, the Rochers de Freyr is the most important climbing area in Belgium. The site counts 7 main crags and 8 secondary crags. Over 600 routes in all varieties.",
    # location: "Falmignoul, Freyr",
    latitude: -90.0000000,
    longitude: 0.0000000
  },
  {
    name: "Rocher de Landelies",
    description: "Landelies (Montigny-le-Tilleul), Perhaps the most beautyfull slab in the country. Routes up to 7a present a choice for the beginning to moderate climber.",
    # location: "Landelies (Montigny-le-Tilleul)"
    latitude: 50.8500000,
    longitude: 4.3500000
  }

]

area_attributes.each { |params| Area.create!(params) }

sector_attributes = [
  {
    area_id: 1,
    name: "Rocher de l'Ecrin",
    routes_grading: {grade_4: 1, grade_5: 8, grade_6: 11, grade_7: 5}
  },
  {
    area_id: 1,
    name: "Rocher de la Jonction",
    routes_grading: {grade_3: 6, grade_4: 6, grade_5: 8, grade_6: 1}
  },
  {
    area_id: 2,
    name: "Les cinq Anes",
    routes_grading: {grade_4: 2, grade_5: 11, grade_6: 25, grade_7: 18}
  },
  {
    area_id: 2,
    name: "Al'Legne - à gauche du pilastre",
    routes_grading: {grade_4: 8, grade_5: 25, grade_6: 50, grade_7: 31, grade_8: 3}
  }
]

sector_attributes.each { |params| Sector.create(params) }

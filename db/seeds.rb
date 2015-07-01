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
    description: "Part of the crags is situated inside a military camp. Access granted for Belgian citizens in posession of their ID & membership card.
    Climbing is forbidden on the crags behind the village.",
    access: "From Namur, head northeast on Rue Général Michel toward Boulevard Cauchy/N4/N90 and take N80 and N959 to Rue Notre Dame du Vivier/N992.",
    access_time: "5 min on flat ground.",
    location: "Marche-les-Dames, Beez, Namur, Belgium",
    latitude: 50.47991,
    longitude: 4.938837
  },
  {
    name: "Rochers de Freyr",
    description: "Dominating the Meuse, the Rochers de Freyr is the most important climbing area in Belgium. The site counts 7 main crags and 8 secondary crags. Over 600 routes in all varieties.",
    access: "From Dinant, drive in direction of Beauring, via Anseremme. Continue up to the Plateau de Freyr and park the car. All crags are situated on the west side of the road.",
    location: "Falmignoul, Freyr, Belgium",
    latitude:  50.223735,
    longitude: 4.893465
  },
  {
    name: "Rocher de Landelies",
    description: "Landelies (Montigny-le-Tilleul), Perhaps the most beautyfull slab in the country. Routes up to 7a present a choice for the beginning to moderate climber.",
    access: "From Charleroi, continue to Avenue des Alliés, then follow N90 to Chemin du Hameau. Continue onto Chemin du Cerisier until you reach Rue Blanc Callow.",
    access_time: "1 min on flat ground",
    location: "Landelies, Charleroi, Province de Hainaut, Belgium",
    latitude: 50.391988,
    longitude: 4.358879
  },
  {
    name: "Rocher des Grands Malades",
    description: "Steep, vertical limestone climbing, between 25 and 50 routes, from 3a to 8a , spread over many crags.",
    access: "From Namur, head northeast on Rue Général Michel toward Boulevard Cauchy/N4/N90. Take N80 to Rue des Bardes de le Meuse/N959 and exit from Avenue Albert Ier/N80.",
    access_time: "1 min on flat ground",
    location: "Namur, Namur, Belgium",
    latitude:  50.468128,
    longitude: 4.899736
  },
  {
    name: "Las Tetas de Cayey",
    description: "Amazing view in every climb. Long single pitch routes with some multi-pitch options ranging from 5.8 to 5.12 . The rock is mereorized basalt which offers plenty of edges and crack climbing potential. Be careful as there is lots of potential for lose rock. Limited parking access.",
    access: "Take the highway 52 south heading cayey. Take exit 39 after 40 minutes. Stay on the right and make a left on road #1. Pass the intersection with road #162 and continue for few minutes, you will see the gate at Km. 7.9. 1056 is the unlocking combination for the gate. push to unlock. Park inside and walk towards the wall, follow signs and disfruta!",
    access_time: "20min approach from parking",
    location: "Salinas, Cayey, Puerto Rico",
    latitude: 18.05364,
    longitude: 66.13377
  },
  {
    name: "Parque Julio E. Monagas de Bayamon",
    description: "Julio Enrique Monagas offers more than 100 bolted lines in high quality limestone rock. From easy 5.7s to hard 5.12s most routes will reward you with a spectacular view of San Juan and its coast. For those without a rope, there are plenty of bouldering sectors in the area ranging from v0 to v8 problems. There is plenty of parking inside the park for about $3.",
    access: "Situated 15min from San Juan, take the highway Jose de Diego to the west from San Juan, exit street 24 and make a left on 28th street (at the Metropolitan Detention Center). Continue on that road, Central Juanita Ave., and make a left after the gas station to your the left. Continue straight and there is a gate with a Nationalpark sign.",
    access_time: "10min approach from the parking in Monagas Park",
    location: "Monagas Park, Bayamón, Puerto Rico",
    latitude: 18.409365,
    longitude: 66.141417
  },
  {
    name: "Fuhais",
    description: "Most of these climbs are short with few hard moves on each making it a great place to practice, starting from 4+ to 7b, a decent variety of levels. Also after some cleaning of the surrounding great potential for bouldering.",
    grades_distribution: {grade_4: 1, grade_5: 2, grade_6: 7, grade_7: 1},
    access: "Drive down to Fuhais village from Amman (Bachaloria School road) when reaching the big roundabout take a right, then first left, then second right where the globe with Jordan in the middle is. Down the valley and first left. Drive for aprox 1.5 km and the cliff will be infront of you, around 15m high maximum and 300m line of a solid lime stone cliff.",
    access_time: "5 min slightly uphill from parking",
    location: "Fuhais, Jordan",
    latitude: 32.016509,
    longitude: 35.763133
  },
  {
    name: "Gorf Antar, Wadi Rum",
    description: "http://climbingjordan.com/topos/rum/37-rum2",
    access: "If you are coming from Amman and want to go by bus as directly as possible to Wadi Rum, then rather than continuing to Aqaba, you would do better to get down at the Rashidiya Junction.",
    access_time: "1 hour from Rum Village",
    location: "Wadi Rum, Jordan",
    latitude: 29.551851,
    longitude: 35.426651
  },
   {
    name: "Ajloun south",
    description: "http://climbingjordan.com/topos/rum/37-rum2",
    access: "Going to Ajloun from Jerash when reaching to Anjara instead of taking a right from the traffic light to Ajloun, keep going straight to Kufranjeh. When you reach the traffic light of Kufranja, go straight and drive for around 500m and then take the right that says Musherfeh and then down and right after the three big trees left and down to the river, cross the river and up to the left follow the road all the way up after around 1.5 km of driving the road finishes inside a farm with two small brick warehouses, from there hike for around 10 minutes north but more east. You'll find the cliffs on your right unless you're above them!",
    access_time: "20 - 25 min from parking",
    location: "Ajloun, Jordan",
    latitude: 32.18229,
    longitude: 35.40065
  },
  {
    name: "Le Suet",
    description: "Landelies (Montigny-le-Tilleul), Perhaps the most beautyfull slab in the country. Routes up to 7a present a choice for the beginning to moderate climber.",
    access: "Between Taninges and Mieussy, leave D907 at the hamlet of Vagny (at the right side if coming from Taninges) heading towards Chapelle Saint-Gras. After 1,5km, after the roadsign 'Champachoux', take a right turn onto the small descending road called 'Chemin des Sachets'. Park directly after the last house. There is parking for four to five cars.",
    access_time: "5 to 20mins from the parking",
    location: "Taninges, France",
    latitude: 46.07316,
    longitude: 6.33151
  },
  {
    name: "Chapelle Saint-Gras",
    description: "Landelies (Montigny-le-Tilleul), Perhaps the most beautyfull slab in the country. Routes up to 7a present a choice for the beginning to moderate climber.",
    access: "Between Taninges and Mieussy, leave D907 at the hamlet of Vagny (at the right side if coming from Taninges) heading towards Chapelle Saint-Gras. After 1,5km, after the roadsign 'Champachoux', take a right turn onto the small descending road called 'Chemin des Sachets'. Park directly after the last house. There is parking for four to five cars.",
    access_time: "15min",
    location: "Chapelle Saint-Gras, Mieussy, France",
    latitude: 46.07781,
    longitude: 6.32571
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
    area_id: 1,
    name: "Rocher Des Dames",
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
  },
  {
    area_id: 2,
    name: "Le Fromage",
    routes_grading: {grade_4: 8, grade_5: 25, grade_6: 50, grade_7: 31, grade_8: 3}
  },
  {
    area_id: 9,
    name: "Thor Motlagh (Sami's cliff)",
    description: "One of the first sport-climbing crags in the kingdom. Very nice surrounding in a calm valley.
Some classic lines with perfect limestone",
    access: "Pass left the stone – wall of a big square with a single tree in the middle up to the small rocks on top of the hill. Cross the plateau to the right to find a small trail between the rocks and some dolmen. Walk for some more minutes to the base of the left part of the cliff. ",
    access_time: "20 - 25 min from parking",
    routes_grading: {grade_4: 2, grade_5: 2, grade_6: 7, grade_7: 1},
    cardinal_direction: "SW",
    location: "Ajloun, Jordan",
    latitude: 32.309328,
    longitude: 35.713288
  },
  {
    area_id: 9,
    name: "Wahadeena, Ajloun",
    description: "Perfect rock, nice ambience and an amazing view  – this is Wahadeena. More lines are possible to the right + opposite of the small valley to the left, there are more cliffs – not that high, but with several nice lines as well.",
    access: "Pass left the stone – wall of a big square with a single tree in the middle up to the small rocks on top of the hill. Cross the plateau to the right to find a small trail between the rocks and some dolmen. Walk for some more minutes to the base of the left part of the cliff. ",
    access_time: "20 - 25 min from parking",
    routes_grading: {grade_4: 1, grade_5: 2, grade_6: 4},
    cardinal_direction: "SW",
    location: "Ajloun, Jordan",
    latitude: 32.309669,
    longitude: 35.713942
  },
  {
    area_id: 9,
    name: "Ras Sabiq, Ajloun",
    description: "A real high and demanding piece of rock. Best limestone offers beautiful and various routes in different grades.
Facing north it is the perfect crag for hot days. Especially in combination with Wahadeena you will have a real full day.",
    access: "Driving down the Kufranja valley in direction to Ghor. Pass the check-point and after a couple of kilometers there is a short crash barrier along the street. Park here and you can see the top of the cliff. Follow some small goat-trails to the base of the uppercliff to your left ",
    access_time: "2min from parking",
    routes_grading: {grade_5: 1, grade_6: 7, grade_7: 3},
    cardinal_direction: "NE",
    location: "Ajloun, Jordan",
    latitude: 32.304612,
    longitude: 35.679709
  }
]

sector_attributes.each { |params| Sector.create(params) }

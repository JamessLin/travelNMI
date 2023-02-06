import 'package:app/util/model/selectedPlace.dart';
import 'package:app/util/model/subPlaces.dart';

class Saipan {
  static List<Category> getMockCategories() {
    return [
      Category(
          name: "Where to Visit?",
          imageUrl: "assets/images/Places/managaha.jpg",
          location: "Saipan",
          description: "Good Place",
          distance: 2,
          rating: 2,
          subPlaces: [
            subPlaces(
                activityType: 'Places',
                name: 'Managaha Island',
                imageUrl: 'assets/images/Places/managaha.jpg',
                location: 'Saipan',
                description:
                    "Mañagaha is a small islet which lies off the west coast of Saipan within its lagoon in the Northern Mariana Islands. Although it has no permanent residents, Mañagaha is popular among Saipan's tourists as a day-trip destination due to its wide sandy beaches and a number of marine activities including snorkeling, parasailing and jet skiing.",
                distance: 2.5,
                rating: 5,
                subPlaces: []),
            subPlaces(
                activityType: 'Places',
                name: 'Banzai Cliff',
                imageUrl: 'assets/images/Places/banzai.jpg',
                location: 'Saipan',
                description:
                    "An indentation off the coastline between Puntan Sabaneta to the west and Puntan Lagua Kattan to the east, the cliff sits 30 meters high on an area called Banaderu, a Chamorro word for muddy or wet place, suggesting a prior existence of wetland. \n During the final days of World War II, hundreds of Japanese and Okinawan civilians, rather than face capture, jumped off the high sea cliffs, due in no small part to Japanese propaganda that described enemy troops as beasts. Soon after, this stretch of shoreline became known as Banzai Cliff, a designation that is still used today. In 2005, Japanese Emperor Akihito and Empress Michiko visited Banzai Cliff to pray for the souls of those who perished in the Battle of Saipan.",
                distance: 13.9,
                rating: 4.6,
                subPlaces: []),
            subPlaces(
                activityType: 'Last Command Post',
                name: 'Last Command Post',
                imageUrl: 'assets/images/Places/last.jpg',
                location: 'Saipan',
                description:
                    "The Last Command Post is a reinforced cave constructed by the Japanese military in early 1944 and served as a component of Japan’s World War II defensive fortification system from attack by American forces. Although the island was declared secured on 9 July 1944, sporadic fighting continued for weeks. The actual last command post of Lt. General Yoshitsugu Saito was a cave, in a valley behind San Roque Village, from which Saito issued a final all-out counter-attack before committing suicide on July 7, 1944. Several guns and other military equipment were placed on static display in front of the Last Command Post in the 1960s.",
                distance: 25,
                rating: 4.1,
                subPlaces: []),
            subPlaces(
                activityType: 'Places',
                name: 'Suicide Cliff',
                imageUrl: 'assets/images/Places/sucide.png',
                location: 'Saipan',
                description:
                    "Rising over 800 feet, Suicide Cliff juts out over the relatively flat plains of Marpi.  This site is where many Japanese civilians and soldiers jumped off of the high cliffs rather than surrender to the American forces in the last days of the battle for Saipan. Memorials to the deceased are speckled along the cliff’s edge. Unobstructed views of the northern tip of the island, an abandoned WWII airfield, and Banzai Cliff, can be seen from the lookout points. Suicide Cliff has also served as a launchpad for hang-glider competitions and as an access-point to the “Banadero Trail,” a hiking path that leads to the Last Command Post.",
                distance: 25,
                rating: 4.1,
                subPlaces: []),
            subPlaces(
                activityType: 'Places',
                name: 'Mt. Tapochau',
                imageUrl: 'assets/images/Places/mount.jpg',
                location: 'Saipan',
                description:
                    "Comprised of uplifted limestone, Mt. Tapochau (Okso Tapochau) stands as the highest point on the island of Saipan. One is afforded a majestic view of Saipan and nearby Tinian and Aguiguan from its summit. Thousands of Catholics trek up each Good Friday to plant a large wooden cross. The ancient Chamorros may have used the mountain as a navigational landmark, a function it continues to serve today.",
                distance: 25,
                rating: 4.6,
                subPlaces: []),
            subPlaces(
                activityType: 'Places',
                name: 'Bird Island',
                imageUrl: 'assets/images/Places/bird.jpg',
                location: 'Saipan',
                description:
                    "Situated in a picturesque bay in Saipan’s rugged northeastern coast, the tiny, rugged island is separated from Saipan by a fringing reef, a narrow stretch of shallow lagoon and a lovely white sand beach. During the Japanese administration, the island was known as tsukimi or “moon viewing island.” So named for the hundreds of birds that nest there, Bird Island is a must-see attraction in Saipan. One of the marine sanctuaries where fishing is strictly prohibited, it is also one of the three areas on Saipan with volcanic deposits.",
                distance: 25,
                rating: 4,
                subPlaces: []),
            subPlaces(
                activityType: 'Places',
                name: 'NMI Museum',
                imageUrl: 'assets/images/Places/NMI.jpg',
                location: 'Saipan',
                description:
                    "The Northern Mariana Islands Museum of History and Culture was established by Public Law 10-5 in 1996 and serves as the official repository for historic and cultural materials from the Commonwealth of the Northern Mariana Islands. The mission of the Museum is to acquire, preserve, interpret, and exhibit artifacts and other historical materials to increase public awareness, understanding, and appreciation of the rich history and cultural traditions of the Northern Marianas, a history that dates back nearly 4,000 years. The Museum occupies the old Japanese Hospital, a facility that provided medical care to the people of Saipan from 1926 until its abandonment in 1944 during the World War II Battle of Saipan.  In recognition of its historical significance, the Japanese Hospital was listed on the U.S. National Register of Historic Places in 1974. Following renovations to this historic building that included the addition of the main gallery, the Museum opened its doors to the public in 1998.  The Museum’s exhibits tell our story from the original settlement of the islands through the political negotiations of the 1970s that led to the creation of today’s U.S. Commonwealth of the Northern Mariana Islands.",
                distance: 25,
                rating: 4.4,
                subPlaces: []),
          ]),
      Category(
          name: "What to do?",
          imageUrl: "assets/images/Activities/grotto.jpg",
          location: "Saipan",
          description: "Good Place",
          distance: 2,
          rating: 2,
          subPlaces: [
            subPlaces(
                activityType: "Activities",
                name: "(Dive) Lau Lau Beach",
                imageUrl: 'assets/images/Activities/Laulau.jpg',
                location: 'Saipan',
                description:
                    "Located in Lau Lau Bay, with an easy beach entry and one of the largest reefs on the island, this is one of the most popular sites. Lau Lau Beach has hundreds of small animals to see, such as an array of wrasses, butterfly fish, surgeons, and more. For the divers that like to go slow, you will also have frequent encounters with nudibranchs, stone fish, and octopus. This is an ideal dive site for beginners or divers interested in smaller, more colorful animals.",
                distance: 0,
                rating: 4.2,
                subPlaces: []),
            subPlaces(
                activityType: "Activities",
                name: "(Dive) Grotto",
                imageUrl: 'assets/images/Activities/grotto.jpg',
                location: 'Saipan',
                description:
                    "Named one of world’s top cavern dive sites, this natural sinkhole is connected to the ocean by three submerged tunnels. The Grotto offers indelible variations of blue, making it a must-see destination for both visitors and locals alike. The Grotto is Saipan’s signature destination and as such, its environment needs to be protected and respected. Whatever you bring into the Grotto, you need to take out. Exercise caution as the strong currents can be extremely dangerous.",
                distance: 16.3,
                rating: 4.6,
                subPlaces: []),
            subPlaces(
                activityType: "Activities",
                name: "(Dive) Maritime Heritage Trail",
                imageUrl: 'assets/images/Activities/Maritime.jpg',
                location: 'Saipan',
                description:
                    "Located within the protected waters of the Saipan lagoon, the majority of this dive site includes two Japanese shipwrecks, two Japanese aircrafts, two U.S. aircrafts, a U.S. landing vehicle, and two Japanese landing crafts, all found in the clear waters between Garapan, Tanapag Harbor, and Mañagaha Island. Further south in Chalan Kanoa Lagoon, there are three U.S. tanks.",
                distance: 24,
                rating: 4,
                subPlaces: []),
            subPlaces(
                activityType: "Activities",
                name: "(Dive) Eagle Ray City",
                imageUrl: 'assets/images/Activities/ray.jpg',
                location: 'Saipan',
                description:
                    "Eagle Ray City is one of the most unique dives in Saipan. Rising out of the sand at a depth 30 feet is a rocky formation that on a good day will have up to 40 eagle rays swimming around it. The divers go down to the rocks and hold on as the eagle rays pass overhead. Many times the rays come close enough for a photograph.",
                distance: 24,
                rating: 5,
                subPlaces: []),
            subPlaces(
                activityType: "Activities",
                name: "(Dive) Banzai Cliff",
                imageUrl: 'assets/images/Places/banzai.jpg',
                location: 'Saipan',
                description:
                    "This dive site is very close to Banzai. This site is only accessible during a brief time of the year. When the sun shines through a hole in the top of the cavern, it’s like a spotlight shining on a stage. There is always the possibility of seeing large fish and animals such as turtles and sharks.",
                distance: 24,
                rating: 4.6,
                subPlaces: []),
            subPlaces(
                activityType: "Activities",
                name: "(Dive) Shoan Maru Wreck",
                imageUrl: 'assets/images/Activities/wreck.jpg',
                location: 'Saipan',
                description:
                    "This 407 foot Imperial Japanese Navy freighter went down on February 2, 1944, during the WWII Battle for Saipan while carrying conscripted Korean soldiers. Lying at about 35 feet deep on the sandy floor of the Saipan lagoon, part of the Shoan Maru breaks the surface. This shallow depth makes this a perfect dive for novice wreck divers. The wreck is home to a dazzling assortment of tropical fish. Octopus, white tip sharks, schools of yellowtail and rabbitfish, and solitary large jacks and snappers are also common sights around the wreck.",
                distance: 24,
                rating: 4.2,
                subPlaces: []),
          ]),
      Category(
          name: "Where to Eat?",
          imageUrl: "assets/images/Restaurants/restaurant.jpg",
          location: "Saipan",
          description: "Good Place",
          distance: 2,
          rating: 2,
          subPlaces: [
            subPlaces(
                activityType: "Restaurants",
                name: 'The Shack Saipan',
                imageUrl: 'assets/images/Restaurants/shack.jpg',
                location: 'Saipan',
                description:
                    "The Shack Saipan provides a unique combination of meals that are truly healthy side by side our traditional home cooked meals by mom. We offer Specialty Crepes (savory and sweet), Daily Plate Specials, Salads, Quinoa Boxes, Smoothies, Breakfast Bowls, Cold Beverages, Espresso Drinks, Truly Healthy Desserts and much more!",
                distance: 2,
                rating: 4.5,
                subPlaces: []),
            subPlaces(
                activityType: "Restaurants",
                name: 'Revolving Restaurant 360',
                imageUrl: 'assets/images/Restaurants/360.jpg',
                location: 'Saipan',
                description: "",
                distance: 2,
                rating: 4.5,
                subPlaces: []),
            subPlaces(
                activityType: "Restaurants",
                name: 'Himawari',
                imageUrl: 'assets/images/Restaurants/himawari.jpg',
                location: 'Saipan',
                description: "",
                distance: 2,
                rating: 4,
                subPlaces: []),
            subPlaces(
                activityType: "Restaurants",
                name: ' Country House Restaurant',
                imageUrl: 'assets/images/Restaurants/countryhouse.jpg',
                location: 'Saipan',
                description: "",
                distance: 2,
                rating: 4,
                subPlaces: []),
            subPlaces(
                activityType: "Restaurants",
                name: "Shirley's Coffee Shop",
                imageUrl: 'assets/images/Restaurants/Shirley.jpg',
                location: 'Saipan',
                description: "",
                distance: 2,
                rating: 4,
                subPlaces: []),
            subPlaces(
                activityType: "Restaurants",
                name: 'Spicy Thai Noodle Place',
                imageUrl: 'assets/images/Restaurants/spicy.jpg',
                location: 'Saipan',
                description: "",
                distance: 2,
                rating: 4,
                subPlaces: []),
            subPlaces(
                activityType: "Restaurants",
                name: "Godfather's Bar",
                imageUrl: 'assets/images/Restaurants/god.jpg',
                location: 'Saipan',
                description: "",
                distance: 2,
                rating: 4,
                subPlaces: []),
            subPlaces(
                activityType: "Restaurants",
                name: "Giovanni's",
                imageUrl: 'assets/images/Restaurants/gio.jpg',
                location: 'Saipan',
                description: "",
                distance: 2,
                rating: 4.5,
                subPlaces: []),
            subPlaces(
                activityType: "Restaurants",
                name: 'Loco & Taco Smoke Dining Bar',
                imageUrl: 'assets/images/Restaurants/loco.jpg',
                location: 'Saipan',
                description: "",
                distance: 2,
                rating: 4.5,
                subPlaces: []),
            subPlaces(
                activityType: "Restaurants",
                name: 'Naked Fish Bar & Grill',
                imageUrl: 'assets/images/Restaurants/naked.jpg',
                location: 'Saipan',
                description: "",
                distance: 2,
                rating: 4,
                subPlaces: []),
          ]),
    ];
  }
}

class Tinian {
  static List<Category> getMockCategories() {
    return [
      Category(
          name: "Where to visit?",
          imageUrl: "assets/images/Places/Taga.jpg",
          location: "Tinian",
          description: "Good Place",
          distance: 2,
          rating: 2,
          subPlaces: [
            subPlaces(
                activityType: 'Places',
                name: 'House of Taga',
                imageUrl: 'assets/images/Places/Taga.jpg',
                location: 'Tinian',
                description:
                    "A large twelve-stone latte house, As Taga is part of an extensive Latte Period Village site built roughly around 1000 A.D. Legends tell us Chief Taga had superhuman strength and buried the remains of his daughter in the hollowed-out cavity of one of the capstones. The latte shafts of the House of Taga measure four meters in height, making it the largest latte house ever erected in The Marianas. The existing Taga Latte Stone is only one of eighteen that used to stand erect before the arrival of Europeans. Cultural deposits and human burials underlay the site but by World War II, only two shafts and capstones remained standing. Sadly, naval shellfire destroyed one of these last two.",
                distance: 25,
                rating: 4.7,
                subPlaces: []),
            subPlaces(
                activityType: 'Places',
                name: 'Atomic Bomb Pits',
                imageUrl: 'assets/images/Places/bomb.jpg',
                location: 'Tinian',
                description:
                    "The atomic bomb pits were constructed at North Field in anticipation of the atomic bomb attacks to be launched against Japan by the 509th Composite Group. In 1945, the uranium bombs nicknamed “Little Boy” and “Fat Man” were loaded onto the Enola Gay and Bockscar, respectively, from Pit One to fly the atomic missions against the cities of Hiroshima on August 6th and Nagasaki on August 9th.",
                distance: 25,
                rating: 4.7,
                subPlaces: []),
            subPlaces(
                activityType: 'Places',
                name: 'Suicide Cliff',
                imageUrl: 'assets/images/Places/cliff.jpg',
                location: 'Tinian',
                description:
                    "Heavy fighting raged from July 30 to August 1, 1945, and as American forces closed in, dozens of Japanese combatants and civilians jumped from sea cliffs that fringe southern Tinian rather than surrender to American forces. Memorials have been erected to remember those who lost their lives during the war, and this area provides a scenic view of the ocean and serves as a popular cliff fishing spot.",
                distance: 25,
                rating: 4.1,
                subPlaces: []),
            subPlaces(
                activityType: 'Places',
                name: 'North Field',
                imageUrl: 'assets/images/Places/feild.jpg',
                location: 'Tinian',
                description:
                    "The U.S. military began immediate construction of North Field after the island was captured from the Japanese in July 1944. Built atop Ushi Point Airfield that had been built by the Japanese, North Field can accommodate the B-29 Super fortress, an advanced bomber that combined a large bomb load with an extremely long range. Four runways each 8,500 feet long made North Field the largest operational airfield in the world at the height of combat operations in the summer of 1945. On August 6, 1945, a B-29 nicknamed Enola Gray, piloted by Colonel Paul Tibbets, flew the first atomic mission to Hiroshima followed by the B-29, named Bockscar, to Nagasaki on August 9th. Today, North Field is used as a military training area.",
                distance: 25,
                rating: 5,
                subPlaces: []),
          ]),
      Category(
          name: "What to do?",
          imageUrl: "assets/images/Activities/dives.jpg",
          location: "Tinian",
          description: "Good Place",
          distance: 2,
          rating: 2,
          subPlaces: [
            subPlaces(
                activityType: "Activities",
                name: "Fleming Diving point",
                imageUrl: 'assets/images/Places/fleming.jpg',
                location: 'Tinian',
                description:
                    "This is a very good wall dive from a boat that has great coral formations and is abundant with smaller animals and fish. The wall drops off to more than 200 feet and has impeccable visibility on Tinian. When the divers are along the side of the wall, it’s very easy to look down in the crystal clear water and get a feeling of flying.",
                distance: 24,
                rating: 5,
                subPlaces: []),
            subPlaces(
                activityType: "Activities",
                name: "Tinian Grotto",
                imageUrl: 'assets/images/Activities/tgrotto.jpg',
                location: 'Tinian',
                description:
                    "The Grotto is the most popular cavern dive in Tinian. With three main entry points into the cavern, most divers enter from the hole at the top, leading to a beautiful room inside. After exploring inside the cavern, exit through another hole, and move along the wall while looking for beautiful shrimp and crabs within the coral formations on the Grotto. At the end of the dive, look back towards the cavern to see all of the bubbles escaping from the inside.",
                distance: 24,
                rating: 5,
                subPlaces: []),
            subPlaces(
                activityType: "Activities",
                name: "Blow Hole",
                imageUrl: 'assets/images/Activities/blowhole.jpg',
                location: 'Tinian',
                description:
                    "The spray hole is located in the southeast of Tianning Island, which is a natural phenomenon formed by artificial formation. Every once in a while, a seawater will be sprayed from the mouth of the seaside hole, which is caused by different pressure on both sides. It is very interesting to take pictures here.",
                distance: 24,
                rating: 5,
                subPlaces: []),
          ]),
      Category(
          name: "Where to eat?",
          imageUrl: "assets/images/Restaurants/bar.jpg",
          location: "Tinian",
          description: "Good Place",
          distance: 2,
          rating: 2,
          subPlaces: [
            subPlaces(
                activityType: "Restaurants",
                name: 'Bar-K Diner & Dine-In',
                imageUrl: 'assets/images/Restaurants/bar.jpg',
                location: 'Tinian',
                description: "Offers good food visit Tinian Bar K Diner Now!",
                distance: 2,
                rating: 4.5,
                subPlaces: []),
            subPlaces(
                activityType: "Restaurants",
                name: 'Lucky Bistro',
                imageUrl: 'assets/images/Restaurants/lucky.jpg',
                location: 'Tinian',
                description: "visit lucky bistro at ...",
                distance: 2,
                rating: 4.5,
                subPlaces: []),
            subPlaces(
                activityType: "Restaurants",
                name: 'JC.CAFE',
                imageUrl: 'assets/images/Restaurants/jc-cafe.jpg',
                location: 'Tinian',
                description:
                    "The food is great and sometimes they have fresh fish. Other than the Dynasty this is the only place to eat. Fortunately all the dishes are very good.",
                distance: 2,
                rating: 4.5,
                subPlaces: []),
          ]),
    ];
  }
}

class Rota {
  static List<Category> getMockCategories() {
    return [
      Category(
          name: "Where to visit?",
          imageUrl: "assets/images/Places/cave.jpg",
          location: "Rota",
          description: "Good Place",
          distance: 2,
          rating: 2,
          subPlaces: [
            subPlaces(
                activityType: 'Places',
                name: 'East Harbor',
                imageUrl: 'assets/images/Places/east.jpg',
                location: 'Rota',
                description:
                    "Located in a narrow cut in the fringing reef in Sasanhaya Bay, the Japanese originally constructed East Harbor in the early 1930s. Since it sits exposed to southwesterly swells, the harbor has been damaged on many occasions over the years especially by tropical storms and typhoons. It is now used primarily as a small boat launching spot.",
                distance: 25,
                rating: 5,
                subPlaces: []),
            subPlaces(
                activityType: 'Places',
                name: 'Japanese Cannon',
                imageUrl: 'assets/images/Places/cannon.jpeg',
                location: 'Rota',
                description:
                    "A Japanese 140 mm pedestal mounted naval gun that had a range of about 17,000 meters, the gun was to protect the anchorage in Sasanhaya Bay as part of Japan’s defense of Rota during World War II. A second casemate, without a weapon, is located just to the west of this site. The gun emplacement was built by the Japanese military in 1941. It was listed on the National Register of Historic Places in 1984.",
                distance: 25,
                rating: 4,
                subPlaces: []),
            subPlaces(
                activityType: 'Places',
                name: 'Pona Point Fishing Cliff',
                imageUrl: 'assets/images/Places/pona.jpg',
                location: 'Rota',
                description:
                    "Point of land on the eastern tip of Sasanhaya Bay, this is the only area on Rota where volcanic rocks are present. This area is called Talakhaya and due to its underlying volcanic geology, the only area on Rota that possesses freshwater streams. Pona Point is a popular cliff fishing location where the annual Rota Cliff Fishing Derby is held. A lucky angler may hook up a large skipjack or yellowfin tuna while enjoying the panoramic view of the southern coast of the island.",
                distance: 25,
                rating: 4.8,
                subPlaces: []),
            subPlaces(
                activityType: 'Places',
                name: 'Chugai Cave',
                imageUrl: 'assets/images/Places/cave.jpg',
                location: 'Rota',
                description:
                    "The Chugai Pictograph site is comprised of roughly ninety individual images painted on the walls of a natural cave in the southwestern corner of Rota’s Chugai area. The drawings are in black, dark gray, and light brown pigments in lines and geometric shapes that also include a smaller number of animal-shaped figures, the most obvious of which are sea turtles and a large billfish. Experts suspect these drawings reflect ties with ancient Chamorro ancestor worship. The cave remains one of the most impressive examples of Chamorro rock art in The Marianas. The site was listed on the National Register of Historic Places in 1998.",
                distance: 25,
                rating: 4.3,
                subPlaces: []),
            subPlaces(
                activityType: 'Places',
                name: 'Bird Sanctuary',
                imageUrl: 'assets/images/Places/rbird.jpg',
                location: 'Rota',
                description:
                    "The Chenchun Bird Sanctuary comprises the rugged area between Puntan As Fani and Taksunok on Rota’s southeastern coast. The overlook affords visitors a bird’s eye view of the sanctuary. The pristine limestone forest has never been disturbed and provides important nesting areas for a range of sea birds seen roosting throughout the sanctuary. Archaeological investigations have documented several ancient Chamorro latte villages.",
                distance: 25,
                rating: 4.8,
                subPlaces: []),
            subPlaces(
                activityType: 'Places',
                name: 'Japanese Locomotive',
                imageUrl: 'assets/images/Places/train.png',
                location: 'Rota',
                description:
                    "A pre-World War II railroad locomotive used to haul sugar cane from the fields to the mill in Songsong Village, this is the only locomotive associated with the sugar cane industry that is still in its traditional location.",
                distance: 25,
                rating: 4,
                subPlaces: []),
          ]),
      Category(
          name: "What to do?",
          imageUrl: "assets/images/Activities/swim.jpg",
          location: "Rota",
          description: "Good Place",
          distance: 2,
          rating: 2,
          subPlaces: [
            subPlaces(
                activityType: "Activities",
                name: "Dive Senhanon Cave / Rota Hole",
                imageUrl: 'assets/images/Activities/swim.jpg',
                location: 'Rota',
                description:
                    "The most popular dive site in Rota, this is an advanced dive that is done from a boat. The diver enters the cavern from the ocean at about 40 feet. Once inside, there are many schools of fish and lobster. The highpoint of the dive is when the light shines through the opening in top of the cavern creating the “Jesus Experience.”",
                distance: 24,
                rating: 2,
                subPlaces: []),
          ]),
      Category(
          name: "Where to Eat?",
          imageUrl: "assets/images/Restaurants/rice.jpg",
          location: "Rota",
          description: "Good Place",
          distance: 2,
          rating: 2,
          subPlaces: [
            subPlaces(
                activityType: "Restaurants",
                name: 'Tokyo en restaurant',
                imageUrl: 'assets/images/Restaurants/rice.jpg',
                location: 'Rota',
                description:
                    "A Japanese Restaurants with good foods, This restuarant is one of the great locations on the island of Rota to experience oriental food, mostly Japanese menu's. Great food and moderate prices.",
                distance: 2,
                rating: 4,
                subPlaces: []),
            subPlaces(
                activityType: "Restaurants",
                name: 'Pizzaria Bar and Grill',
                imageUrl: 'assets/images/Restaurants/pizzaria.jpg',
                location: 'Rota',
                description: "",
                distance: 2,
                rating: 4,
                subPlaces: []),
            subPlaces(
                activityType: "Restaurants",
                name: '3. Pacifica Restaurant',
                imageUrl: 'assets/images/Restaurants/rotaa.jpg',
                location: 'Rota',
                description: "",
                distance: 2,
                rating: 3.5,
                subPlaces: []),
          ]),
    ];
  }
}

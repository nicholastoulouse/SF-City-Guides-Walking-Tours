USE walking_tours_db;

-- USERS
INSERT INTO users (firstname, lastname, email, mobilephone, pwd, bio, category)
VALUES ("Nicholas", "Toulouse", "hello@nicholastoulouse.com", "4847671539", "abc", "Software engineer who just enjoys walking, history, and architecture.", 'user');

INSERT INTO users (firstname, lastname, email, mobilephone, pwd, bio, category)
VALUES ("Sandy", "Navarro", "sandycnavarro@gmail.com", "6507739510", "123", "IT professional and developer at Stanford", 'guide');

-- TOURS
INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, meeting_details, mediawikiURL, description)
VALUES ("American History in Golden Gate Park", "Golden Gate Park", "San Francisco", "CA", "Conservatory Of Flowers", 37.77278, -122.45917, "TOP OF STAIRS IN FRONT OF CONSERVATORY OF FLOWERS", "https://en.wikipedia.org/wiki/Presidio_of_San_Francisco", "Statues, plaques, monuments, and trees in Golden Gate Park commemorate events in American history. This two-hour walk takes you to sites familiar and unfamiliar to most visitors. Come for a nice walk in the park as we review American history.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("Presidio Edifices and Museums", "Presidio", "San Francisco", "CA", "Entrance gate to Presidio", 37.785530, -122.456001, "https://en.wikipedia.org/wiki/Presidio_of_San_Francisco", "The Presidio and the surrounding neighborhood have a rich history spanning back to when the Spanish arrived in 1776. The Presidio is where San Francisco began when it served as a military fort under the flags of Spain, Mexico and the United States.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, meeting_details, mediawikiURL, description)
VALUES ("Bungalows of Westwood Park", "Westwood Park", "San Francisco", "CA", "OCEAN & FAXON AVES.", 37.724680, -122.459970, "Pack a picnic lunch or snack and plenty of liquids.", "https://en.wikipedia.org/wiki/Westwood_Park,_San_Francisco", "Craftsman, English Tudor, Spanish Revival, Colonial Revival. Visit this west side neighborhood of 650 cozy bungalows built for middleclass San Franciscans in the early 20th century.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("Dogpatch & Potrero Point", "Potrero Hill", "San Francisco", "CA", "3rd & 20th Streets in front of Dogpatch Cafe", 37.780079, -122.420174, "https://en.wikipedia.org/wiki/Potrero_Hill", "Explore the past and present of this eclectic Historic District and neighborhood in transition, from its vintage working-class cottages and industrial-age shipyards to modern lofts.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, meeting_details, mediawikiURL, description)
VALUES ("Golden Gate Heights Stairway Walk", "Golden Gate Heights", "San Francisco", "CA", "Kirkham and 15th Avenue, at the base of the 15th Avenue stairs", 37.760040, -122.472570, "Comfortable walking shoes mandatory.", "https://en.wikipedia.org/wiki/Grand_View_Park", "On this hearty walk, a multitude of stairways connects comfortable Inner Sunset residential streets with dramatic chert outcroppings offering magnificent views of San Francisco, the Pacific Ocean, and the Marin Hills.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("Inner Richmond Part I", "Inner Richmond", "San Francisco", "CA", "Northeast corner of 3rd Ave. & Geary Boulevard", 37.781110, -122.461080, "https://en.wikipedia.org/wiki/Richmond_District,_San_Francisco", "The district’s rich history includes robbers’ roosts, and racetracks, squatters and ranches, a saloon district and a red light district, an earthquake shack camp, Wyatt Earp’s house, and maybe SF’s oldest Chinese laundry, as well as charming Victorian row houses and Craftsman homes. ");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("Inner Richmond Part II", "Inner Richmond", "San Francisco", "CA", "In front of hospital, 6th Ave. & Geary Boulevard", 37.781080, -122.464300, "https://en.wikipedia.org/wiki/Richmond_District,_San_Francisco", "The district’s rich history includes robbers’ roosts, and racetracks, squatters and ranches, a saloon district and a red light district, an earthquake shack camp, Wyatt Earp’s house, and maybe SF’s oldest Chinese laundry, as well as charming Victorian row houses and Craftsman homes. ");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("Mount Davidson Hike", "Westwood Highlands", "San Francisco", "CA", "Sherwood Ave. & Myra Way", 37.738264, -122.453305, "https://en.wikipedia.org/wiki/Mount_Davidson_(California)", "Explore the history of San Francisco’s highest hill on this hike through a 38-acre nature preserve to the amazing, gigantic monument at its 938-foot-high summit. Trails can be windy and muddy. Wear a jacket and sturdy shoes. No restrooms available. ");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("North of Panhandle", "Panhandle", "San Francisco", "CA", "Baker Street between Oak and Fell Streets, across the street from the DMV by the Mckinley statue", 37.772, -122.45, "https://en.wikipedia.org/wiki/Panhandle_(San_Francisco)", "This area started out as sand dunes and marshes and became a fashionable neighborhood. The Depression era gave way to a working-class area. After the Summer of Love, there was a population exodus until today, and now it is becoming a desirable neighborhood again. Hear and see the details of the physical, cultural, and ethnic changes that occurred in the past 150 years. One steep hill.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("Russian Hill Stairways", "Russian Hill", "San Francisco", "CA", "Hyde & Filbert Streets", 37.8018, -122.4198, "https://en.wikipedia.org/wiki/Russian_Hill,_San_Francisco", "Climb hills and hidden stairways 345 feet above San Francisco Bay to visit bucolic lanes, national historic districts, and ghosts of fascinating bohemian characters. See where Willis Polk lived and see an octagon house.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("Sacred places in San Francisco", "Cathedral Hill", "San Francisco", "CA", "Main plaza entrance to Saint Mary’s, Gough & Geary Streets", 37.7842, -122.4255, "https://en.wikipedia.org/wiki/Western_Addition,_San_Francisco", "Visit churches, a temple, a cathedral, and a synagogue. View symbols and architecture and hear the history of the city’s religiousinstitutions.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("South Beach Historic Warehouse District", "South Beach", "San Francisco", "CA", "Brannan Street & the Embarcadero, by Delancey St. awning", 37.783230, -122.400650, "https://en.wikipedia.org/wiki/Embarcadero_(San_Francisco)", "See historic brick warehouses, some pre-1906, and search for evidence of the area’s rich railroading history. Learn about a Chinese fishing village from the 1850s and more.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, meeting_details, mediawikiURL, description)
VALUES ("Tenderloin District I", "Tenderloin", "San Francisco", "CA", "Horseman statue at Civic Center's United Nations Plaza", 37.783333, -122.416667, "Market, Powell, & Eddy Sts", "https://en.wikipedia.org/wiki/Tenderloin,_San_Francisco", "Explore the Tenderloin’s isolated rural village beginnings and its transformation into SF’s hotel, entertainment, and silk stocking vice district, followed by the area’s decline and resurrection. Learn about famous madams, gambling, jazz clubs, SF’s bootlegger wars, and Little Saigon.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("Tenderloin District II", "Tenderloin", "San Francisco", "CA", "Southwest corner of McAllister & Leavenworth Streets", 37.783333, -122.416667, "https://en.wikipedia.org/wiki/Tenderloin,_San_Francisco", "Explore the Tenderloin’s isolated rural village beginnings and its transformation into SF’s hotel, entertainment, and silk stocking vice district, followed by the area’s decline and resurrection. Learn about famous madams, gambling, jazz clubs, SF’s bootlegger wars, and Little Saigon.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("Visitacion Valley – Part I", "Visitacion Valley", "San Francisco", "CA", "45 Leland Ave", 37.711360, -122.404740, "https://en.wikipedia.org/wiki/Visitacion_Valley,_San_Francisco", "Learn about the 1777 'discovery' and naming of Visitacion Valley, its pre-Gold Rush inhabitants, local movie lore, and art made from trash. We’ll explore the area’s eastern portion, with its three micro-neighborhoods and three milehouses; a “castle” and a log cabin; development past, present, and planned; and more.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("West Side Whimsy Walk", "Balboa Terrace", "San Francisco", "CA", "Staircase next to 141 Juniper Serra", 37.641590, -122.442940, "https://en.wikipedia.org/wiki/Junipero_Serra_Boulevard", "Discover the unique atmosphere and whimsical architecture of these City Beautiful movement-inspired neighborhoods. See the Art Deco landmarks, storybook cottages, and Spanish castles of Balboa Terrace, St. Francis Wood, and Lakeside. No restroom available; rain cancels.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("Chinatown: Grant Avenue and Stockton", "Chinatown", "San Francisco", "CA", "Old gate", 37.801520, -122.419520, "https://en.wikipedia.org/wiki/Chinatown,_San_Francisco", "The Chinatown centered around Grant Avenue is the oldest Chinatown in North America and the largest Chinese community outside Asia. Since it was established in 1848, Chinatown has been an important and influential in the history and culture of ethnic Chinese immigrants in North America.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("Jackson Square Historic District", "Jackson Square", "San Francisco", "CA", "Jackson Place Cafe", 37.791010, -122.402100, "https://en.wikipedia.org/wiki/Jackson_Square,_San_Francisco", "Jackson Square Historic District contains almost all of the surviving commercial buildings from the 1850s and 1860s. This area, sandwiched between North Beach and the Financial District, is considered one of the oldest commercial neighborhoods in San Francisco.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("Mission Dolores Park and Activities", "Mission Dolores", "San Francisco", "CA", "Back entrance to the Harvey Milk Center", 37.768990, -122.426740, "https://en.wikipedia.org/wiki/Mission_Dolores_Park", "The area and neighborhood around Mission Dolores features the oldest surviving structure in San Francisco. The Mission Dolores church was founded in 1776, back when this area was settled by the Spanish.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("Mission Culture Murals", "the Mission District", "San Francisco", "CA", "3543 18th St between Guerrero & Valencia Sts", 37.752500, -122.414080, "https://en.wikipedia.org/wiki/Mission_District,_San_Francisco", "See how this neighborhood has evolved since 1776. We will view many murals, invoking ghosts from the past, including Catholic priests, Orthodox Jews, German Lutherans, working-class Irish and Italians, Palestinian refugees, and even Mexican gangs. The future also beckons, as gentrifi cation transforms the district");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("Alamo Square Victorian Houses", "Alamo Square", "San Francisco", "CA", "Steiner St & Hayes St", 37.791010, -122.402100, "https://en.wikipedia.org/wiki/Alamo_Square,_San_Francisco", "The residential architecture here, which dates between the 1870s and 1920s, represents one of the city’s iconic spots, referred to as 'Postcard Row.' Historically, Alamo means poplar tree in Spanish and in the early 1800s, the lone cottonwood on Alamo Hill designated a watering hole along the horseback trail from Mission Dolores to the Presidio.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("Cottage Row Neighborhood", "Cottage Row Historic District", "San Francisco", "CA", "Fillmore St & Sutter St", 37.786080, -122.433280, "https://en.wikipedia.org/wiki/Pacific_Heights,_San_Francisco", "An area often overlooked, Cottage Row is located on the edge of Japantown in the Pacific Heights neighborhood. In this area, there is a Cottage Row Mini Park, which is on the National Register of Historic Places, the park runs adjacent to a line of Victorian houses that have stood since the 1800s.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, meeting_details, mediawikiURL, description)
VALUES ("SOMA & Yerba Buena Gardens", "SOMA: South End Historic District", "San Francisco", "CA", "Steps of St. Patrick’s church on Mission St., between 3rd & 4th Sts.", 37.777222, -122.411111, "Consider going to one of the nearby museums afterwards", "https://en.wikipedia.org/wiki/South_of_Market,_San_Francisco", "Yerba Buena Gardens is the jewel of SF’s downtown, an exciting few blocks of museums. The recent renovation of the SFMOMA has made it one of the largest contemporary museums in the world. Come see the garden’s MLK waterfall, the children’s rooftop garden, and the fourth addition of the Moscone Convention Center. Also see an Indian memorial and meet Urge.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("North Beach By Night", "North Beach", "San Francisco", "CA", "Specs Cafe, 12 SAROYAN Place off Columbus between Pacific St & Broadway", 37.800550, -122.404330, "https://en.wikipedia.org/wiki/North_Beach,_San_Francisco", "Discover a different side of North Beach history—that of its colorful bars and nightclubs. You’ll learn the stories behind some of the most eclectic watering holes in town.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("Haight-Ashbury", "Haight-Ashbury", "San Francisco", "CA", "Steps of Yerba Vista Park", 37.765250, -122.435960, "https://en.wikipedia.org/wiki/Haight-Ashbury", "What is now the Haight-Ashbury was a collection of isolated farms and acres of sand dunes. By 1890 the Haight had become the recreation hub of the city. Also, by the 1960s this area became the center of the counter-cultural movement.");

INSERT INTO tours (walktitle, neighborhood, city_name, state_abbrv, meeting_spot, latitude, longitude, mediawikiURL, description)
VALUES ("Castro", "Castro", "San Francisco", "CA", "2101 Market St, San Francisco, CA 94114 USA", 37.765250, -122.435960, "https://en.wikipedia.org/wiki/Castro_District,_San_Francisco", "Filled with rainbow crosswalks, the Castro was one of the first gay neighborhoods in the United States and has played a prominent role in LGBT activism since the 1960s. It remains one of the most colorful, vibrant, and friendly parts of San Francisco.");

-- SCHEDULED TOURS
-- https://database.guide/how-to-format-the-date-time-in-mysql/
-- ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`walking_tours_db`.`scheduled_tours`, CONSTRAINT `scheduled_tours_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`))
-- 'YYYY-MM-DD HH:MM:SS[.fraction]'
INSERT INTO scheduled_tours (tour_id, user_id, scheduled, cancellation, guidenote)
VALUES  (1, 2, "2019-05-01 11:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (2, 2, "2019-05-01 11:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (3, 2, "2019-05-01 10:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (4, 2, "2019-05-01 11:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (5, 2, "2019-05-01 10:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (6, 2, "2019-05-01 11:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (7, 2, "2019-05-01 10:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (8, 2, "2019-05-01 13:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (9, 2, "2019-05-01 11:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (10, 2, "2019-05-01 10:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (11, 2, "2019-05-01 11:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (12, 2, "2019-05-01 14:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (13, 2, "2019-05-01 10:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (14, 2, "2019-05-01 12:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (15, 2, "2019-05-01 10:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (16, 2, "2019-05-01 13:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (17, 2, "2019-05-01 9:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (18, 2, "2019-05-01 13:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (19, 2, "2019-05-01 11:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (20, 2, "2019-05-01 11:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (21, 2, "2019-05-01 11:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (22, 2, "2019-05-01 10:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (23, 2, "2019-05-01 13:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (24, 2, "2019-05-01 12:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (25, 2, "2019-05-01 11:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes."),
        (26, 2, "2019-05-01 10:00:00", 0, "Definite rain cancellation. Bring a picnic, water, comfortable walking shoes.");

-- -- ATTENDEES
INSERT INTO attendees (user_id, scheduled_tours_id) VALUES (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10), (1, 11), (1, 12), (1, 13), (1, 14), (1, 15), (1, 16), (1, 17), (1, 18), (1, 19), (1, 20), (1, 21), (1, 22), (1, 23), (1, 24), (1, 25), (1, 26);

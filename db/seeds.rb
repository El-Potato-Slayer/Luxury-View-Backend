User.create(username: 'Nappa', email: 'nappa@dappa.com', password: '123456', first_name: 'Nappa', last_name: 'Freya',
            is_admin: true)
User.create(username: 'Hoppie', email: 'hoppie@doppie.com', password: '123456', first_name: 'Hoppie',
            last_name: 'Willemse', is_admin: false)
Agent.create(first_name: 'Joshua', last_name: 'Door', email: 'joshuadoor@gmail.com', number: '0987634391', picture: 'https://firebasestorage.googleapis.com/v0/b/tactus-caelesti.appspot.com/o/agents%2FP7JIqIE.png?alt=media&token=bfa90cd0-07e5-4b99-b15e-f678570049bd')
Agent.create(first_name: 'Darlene (unisex name)', last_name: 'Memphis', email: 'darthememphis@gmail.com',
             number: '0987431489', picture: 'https://firebasestorage.googleapis.com/v0/b/tactus-caelesti.appspot.com/o/agents%2FEmbarrased_Man.jpg?alt=media&token=7168439b-a738-4122-96af-fba1dc158a9a')
Agent.create(first_name: 'Yapi', last_name: 'Kobustus', email: 'yapikobus@gmail.com', number: '0874521321', picture: 'https://firebasestorage.googleapis.com/v0/b/tactus-caelesti.appspot.com/o/agents%2Fsalesman.jpg?alt=media&token=0ec04d27-2070-4673-a6d0-bc0eb34cb10b')
Property.create(agent_id: 1, name: '6 Bed Mansion', picture:
  'https://firebasestorage.googleapis.com/v0/b/tactus-caelesti.appspot.com/o/mansions%2Fmansion1.jpg?alt=media&token=af39a749-6fed-41f5-8ed5-d7e0fac7956c',
                description:
  "Private retreat with exceptional sea and mountain views . View By Appointment Only

  Acquire your piece of paradise in prestigious mansion with this split four-level beach style home. The versatile accommodation with the most exquisite eco-pool set at the bottom of the garden overlooks the whole of Lasetto Bay with its own nature reserve and private walks down to the beach.

  This property offers 6 sunny and light-filled bedrooms all en-suite, a large open plan kitchen, dining and lounge area with a wood-burning fireplace. All levels boast glass sliding doors opening onto wrap around decks. There is also a separate split-level flatlet with a private entrance and patio. This home offers several other work-from-home/living spaces or could easily function as a private guest house.

  The mansion boasts its own private security, beautiful beaches and is known as a surfer's paradise.

  This home is truly one of a kind.

  Special features:

  400 000 litre fresh water eco swimming pool

  Huge garden on multiple levels

  Irrigation system

  20 000 litre Jojo tanks

  Solar panels & back up electricity system

  2 solar geysers

  Fully alarmed and infrared beams", price: 10_000_000, address: '98 Parker Ave', floor_area: 650, land_area: 1511)
Property.create(agent_id: 2, name: 'Videa Casale', picture:
  'https://firebasestorage.googleapis.com/v0/b/tactus-caelesti.appspot.com/o/mansions%2Fmansion2.jpg?alt=media&token=cbce1309-7a4c-48c6-b4c3-06c733ce7500', description:
  'An evolution of Modernist Architecture designed with both purpose and intention to create a sublime experience of space and light. This Woods+Dangaren 8 bed 11 bath home + detached guest house is perched high above the Pacific Ocean in the highly coveted Upper Riviera. Majestic 180 coastline + city views are revealed through sliding walls of glass and framed openings to seamlessly connect indoor and outdoor spaces. The main floor introduces warm, organic materials to the experience with Duchateau flooring, custom casework, rift-oak paneling, and rough-hewn limestone to the living and dining areas. An open chefs kitchen with expansive views is complete with Miele appliances, Calacatta stone island, secondary kitchen, and open concept great room. Upstairs, beams of daylight diffuse through the transparent 3 story staircase as kinetic art. Skylights and glass envelop 3 ocean-view bedrooms and a primary suite with floors of radiant heat, fireplace, and pocketing Fleetwood doors that expose a uniquely private and serene outdoor deck, blurring the line between indoors and out. The lower infinity pool + grand spa level is complete with full kitchen, reflecting pond, 2 ensuite bedrooms, gym, office, and theater. The glass sliders from each room provide access to an outdoor environment that is quietly luxurious, elegantly fluid, and ideal for entertaining.', price: 2_600_000, address: '21 Jonta Str',
                floor_area: 750, land_area: 1031)
Property.create(agent_id: 2, name: 'Suganti Vapi', picture:
  'https://firebasestorage.googleapis.com/v0/b/tactus-caelesti.appspot.com/o/mansions%2Fmansion3.jpg?alt=media&token=f86b9aac-574c-44f7-b9a8-67fcc19e04ac', description:
  '"California Dreaming" Not your typical party house in the Bird Streets.This rare two-story, 12,237 square foot Modern works beautifully as a full-time residence with seven bedrooms and 12 baths. Panoramic views are framed by mature landscape. Lush gardens with large infinity edge pool. Complete indoor-outdoor lifestyle.Amenities include: theater, walk-in wine cellar, a full wellness retreat with resistance pool, plunge pool, dry sauna and gym/massage room. Complete with smart home technology and all the amenities one could imagine. Minutes to Sunset Plaza and the finest stores of Beverly Hills. Excellent value in a most prime location.',
                price: 3_500_000, address: '27 Hephner Ave', floor_area: 1136, land_area: 1325)
Property.create(agent_id: 3, name: 'Modern Trophy Estate', picture:
  'https://firebasestorage.googleapis.com/v0/b/tactus-caelesti.appspot.com/o/mansions%2Fmansion4.jpg?alt=media&token=b350a3e3-2b06-499f-9ae3-05666c36e67c', description:
  "Perched at the end of a quiet cul-de-sac stands this custom modern trophy estate.Stunning views of DTLA, the coastline, and Crestwood Hills from every angle, as if you are floating on air. Designed around the art of entertaining, floor to ceiling glass panels seamlessly disappear and integrate the view, the outdoors, the wrap around deck and the interior space. This private oasis is truly a must see in person to experience the energy and privacy.A modern floor plan that features a large sleek fully equipped chef's kitchen, an oversized dining room and an enormous living room that overlooks the captivating views. The main suite rivals any 5-star hotel, with an oversized walk-in closet and spa like bathroom. The lower level consists of a gym, family room, glass wine room, and movie theater.Featuring five en-suite bedrooms and 8 baths laid out over 7,040 square feet, a dramatic infinity pool, grassy pad and tons of space to bask in the sun and enjoy the So Cal weather. The ultimate modern view home.",
                price: 2_500_000, address: '4 Seaview Ave', floor_area: 650, land_area: 735)
Property.create(agent_id: 2, name: 'Majestic Estate', picture:
  'https://firebasestorage.googleapis.com/v0/b/tactus-caelesti.appspot.com/o/mansions%2Fmansion5.jpg?alt=media&token=c527a597-57c2-4ccf-8c99-f8c1d5a2da21', description:
  "This majestic estate is well situated on over a two acre lot, offering privacy but still has the feel of being in a defined neighborhood. The property is close to the private schools and has easy access to I-75, I-285, Cumberland Mall, Downtown and Buckhead. The quality of construction is over the top, interior and exterior, and the design and layout provide for enjoyable formal and informal living. The room sizes, ceiling heights and large windows offer a great feeling of space and light. There are many fabulous architectural features, and the fountain in the front,  and the infinity pool in the back allow one to decompress as you enter the property and enjoy the amenities. The lower level has many activity areas including a wine cellar, media room, game room with bar, and an exercise room with sauna, and the finish level is similar to the first floor. Come visit this unique home, and you will leave feeling refreshed with knowing you have just experienced one of Atlanta's best residential homes.",
                price: 4_800_000, address: '3290 Northside Parkway NW, Suite 200, Atlanta, GA, United States', floor_area: 1149, land_area: 8094)
Property.create(agent_id: 1, name: '26480 Sw Wilken Ln West Linn', picture:
  'https://firebasestorage.googleapis.com/v0/b/tactus-caelesti.appspot.com/o/mansions%2Fmansion6.jpg?alt=media&token=f2d851fb-92ae-4f12-9bfd-4044144a8b3a', description:
  'Custom built country chateau on 68 acres just 30 minutes from downtown Portland. Designed and crafted with antique pieces by local artisans with materials imported from all over the world. Each room has its own story to tell. From tile imported from France to 300 year old door handles on the wine cellar to 10 foot tall kitchen doors from Morocco, there is no lack of creativity, history, and beauty in this home. Each antique piece has been complimented by custom local wood and ironwork. This unique property boasts a secondary living area off the back of the chateau, surrounded by gorgeous farmland and several barns. The beautifully landscaped courtyard and back patio are great for entertaining large groups. Top it all off with breathtaking views from every window. Potential uses include a vineyard, working farm, corporate retreat, or fabulous home with plenty of room for family and guests.',
                price: 5_500_000, address: '26480 SW WILKEN LN , West Linn, OR 97068, West Linn, Oregon, United States', floor_area: 1210, land_area: 280_000)
Property.create(agent_id: 1, name: 'Elegant And Timeless Mountain Estate', picture:
  'https://firebasestorage.googleapis.com/v0/b/tactus-caelesti.appspot.com/o/mansions%2Fmansion7.jpg?alt=media&token=ebc4adf0-54d8-4af0-8af5-8a25b00d189d', description:
  "Words cannot describe this ski-in/ski-out masterpiece by award-winning architect Michael Upwall heralded as Park City's most elegant and timeless mountain estate located in the gated community of The Colony. The dramatic porte-cochere sets the stage for an experience rivaling any 5-star luxury resort with breathtaking panoramic views, unparalleled privacy, world-class amenities, perfect ski access, and a palatial approach to construction and design. The newly remodeled chef’s kitchen truly makes it an entertainer’s heart of the home with intricate detailed high-end finishes including illuminated floor-to-ceiling cabinetry, Cristallo countertops, and herringbone floors that tie together the impeccable mountain chic decor. Notable features include the floating master wing, open concept floor plan, classic bar with a spiral staircase leading to a wine cellar and tasting room, and a Sundance worthy home theater with a stage. This rare equestrian estate sits on 4.8 acres, one of the few slope side homes with expansive outdoor living space, multiple gathering areas, manicured landscaping, outdoor kitchen, hot tub, water feature, and fire garden leading to the singular experience of the spa wing complete with a 25-meter indoor pool and rooms for massage, steam, and fitness.",
                price: 34_000_000, address: '26480 SW WILKEN LN , West Linn, OR 97068, West Linn, Oregon, United States', floor_area: 1636, land_area: 20_000)

Room.create(property_id: 1, name: 'Bedrooms', amount: 6)
Room.create(property_id: 1, name: 'Kitchens', amount: 2)
Room.create(property_id: 1, name: 'Lounges', amount: 2)
Room.create(property_id: 1, name: 'Bathrooms', amount: 6)
Room.create(property_id: 1, name: 'Garages', amount: 2)
Room.create(property_id: 2, name: 'Bedrooms', amount: 8)
Room.create(property_id: 2, name: 'Kitchen', amount: 1)
Room.create(property_id: 2, name: 'Lounges', amount: 1)
Room.create(property_id: 2, name: 'Bathrooms', amount: 11)
Room.create(property_id: 3, name: 'Bedrooms', amount: 7)
Room.create(property_id: 3, name: 'Kitchens', amount: 1)
Room.create(property_id: 3, name: 'Lounges', amount: 2)
Room.create(property_id: 3, name: 'Saunas', amount: 1)
Room.create(property_id: 3, name: 'Bathrooms', amount: 12)
Room.create(property_id: 4, name: 'Bedrooms', amount: 5)
Room.create(property_id: 4, name: 'Kitchens', amount: 1)
Room.create(property_id: 4, name: 'Lounges', amount: 1)
Room.create(property_id: 4, name: 'Bathrooms', amount: 8)
Room.create(property_id: 5, name: 'Bedrooms', amount: 7)
Room.create(property_id: 5, name: 'Bathrooms', amount: 12)
Room.create(property_id: 6, name: 'Bedrooms', amount: 10)
Room.create(property_id: 6, name: 'Bathrooms', amount: 12)
Room.create(property_id: 7, name: 'Bedrooms', amount: 8)
Room.create(property_id: 7, name: 'Bathrooms', amount: 10)
Appointment.create(user_id: 1, property_id: 1, date: DateTime.now)
Appointment.create(user_id: 1, property_id: 2, date: DateTime.now)
Appointment.create(user_id: 2, property_id: 2, date: DateTime.now)

User.create(username: 'Nappa', email: 'nappa@dappa.com', password: '123456', first_name: 'Nappa', last_name: 'Freya', is_admin: true)
User.create(username: 'Hoppie', email: 'hoppie@doppie.com', password: '123456', first_name: 'Hoppie', last_name: 'Willemse', is_admin: false)

Agent.create(first_name: 'Joshua', last_name: 'Door', email: 'joshuadoor@gmail.com', number: '0987634391', picture: 'https://firebasestorage.googleapis.com/v0/b/tactus-caelesti.appspot.com/o/agents%2FP7JIqIE.png?alt=media&token=bfa90cd0-07e5-4b99-b15e-f678570049bd')
Agent.create(first_name: 'Darlene (unisex name)', last_name: 'Memphis', email: 'darthememphis@gmail.com', number: '0987431489', picture: 'https://firebasestorage.googleapis.com/v0/b/tactus-caelesti.appspot.com/o/agents%2FEmbarrased_Man.jpg?alt=media&token=7168439b-a738-4122-96af-fba1dc158a9a')
Agent.create(first_name: 'Yapi', last_name: 'Kobustus', email: 'yapikobus@gmail.com', number: '0874521321', picture: 'https://firebasestorage.googleapis.com/v0/b/tactus-caelesti.appspot.com/o/agents%2Fsalesman.jpg?alt=media&token=0ec04d27-2070-4673-a6d0-bc0eb34cb10b')

Property.create(agent_id: 1, name: '6 Bed Mansion', description: 
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
  
  Fully alarmed and infrared beams", price: 10000000, address: '98 Parker Ave', floor_area: 650, land_area: 1511)
Property.create(agent_id: 2, name: 'Videa Caelesti', description: 'A modern house', price: 10000, address: '98 Parker Ave', floor_area: 950, land_area: 1750)
Property.create(agent_id: 2, name: 'Suganti Vapi', description: 'A mansion with the 3 doors', price: 150000, address: '98 Parker Ave', floor_area: 900, land_area: 2000)

Room.create(property_id: 1, name: 'Bedrooms', amount: 6)
Room.create(property_id: 1, name: 'Kitchens', amount: 2)
Room.create(property_id: 1, name: 'Lounges', amount: 2)
Room.create(property_id: 1, name: 'Bathrooms', amount: 6)
Room.create(property_id: 1, name: 'Garages', amount: 2)
Room.create(property_id: 2, name: 'Bedroom', amount: 4)
Room.create(property_id: 2, name: 'Kitchen', amount: 2)
Room.create(property_id: 2, name: 'Lounge', amount: 3)
Room.create(property_id: 2, name: 'Bathroom', amount: 4)
Room.create(property_id: 3, name: 'Bedroom', amount: 4)
Room.create(property_id: 3, name: 'Kitchen', amount: 3)
Room.create(property_id: 3, name: 'Lounge', amount: 1)
Room.create(property_id: 3, name: 'Bathroom', amount: 4)

Appointment.create(user_id: 1, property_id: 1, date: DateTime.now )
Appointment.create(user_id: 1, property_id: 2, date: DateTime.now )
Appointment.create(user_id: 2, property_id: 2, date: DateTime.now )
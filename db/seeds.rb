# This file should contain all the record creation needed to seed the database with its default values.
User.create(username: 'Nappa', email: 'nappa@dappa.com', password: '123456', first_name: 'Nappa', last_name: 'Freya',
            isAdmin: false)
User.create(username: 'Hoppie', email: 'hoppie@doppie.com', password: '123456', first_name: 'Hoppie',
            last_name: 'Willemse', isAdmin: false)
Agent.create(first_name: 'Joshua', last_name: 'Door', email: 'joshuadoor@gmail.com', number: '0987634391',
             picture: 'empty')
Agent.create(first_name: 'Darlene', last_name: 'Memphis', email: 'darthememphis@gmail.com', number: '0987431489',
             picture: 'empty')
Agent.create(first_name: 'Yapi', last_name: 'Kobustus', email: 'yapikobus@gmail.com', number: '0874521321',
             picture: 'empty')
Property.create(agent_id: 1, name: 'Washington State Mansion', description: 'A mansion in washington state',
                price: 98745, address: '98 Parker Ave', floor_area: 954, land_area: 1853)
Property.create(agent_id: 2, name: 'Videa Caelesti', description: 'A modern house', price: 10000,
                address: '98 Parker Ave', floor_area: 950, land_area: 1750)
Property.create(agent_id: 2, name: 'Suganti Vapi', description: 'A mansion with the 3 doors', price: 150000,
                address: '98 Parker Ave', floor_area: 900, land_area: 2000)
Appointment.create(user_id: 1, property_id: 1, date: DateTime.now)
Appointment.create(user_id: 1, property_id: 2, date: DateTime.now)
Appointment.create(user_id: 2, property_id: 2, date: DateTime.now)

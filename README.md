# Luxury View Backend
This is the backend of the Luxury View Application. It features JWT authentication, as well as CRUD operations of the Property, Appointment, and Agent models. The frontend can be found [here](https://github.com/El-Potato-Slayer/Luxury-View-Frontend)

## Built with
- Ruby
- Ruby on Rails

## Getting started

**To get this project set up on your local machine, follow these steps:**

1. Open Terminal.
2. Navigate to your desired location to download the contents of this repository.
3. Run `git clone https://github.com/El-Potato-Slayer/Luxury-View-Backend.git`.
4. Run `cd luxury-view-backend`.
5. Run `bundle install`
6. Run `rails db:migrate`
7. Run `rails db:seed`
8. Run `rails server` or `rails s`
9. Open `http://localhost:3000/` within your browser

**To run the tests, follow these steps:**
1. Ensure you are in the project root directory
2. Ensure you ran `bundle install`
3. run `rspec`

### Endpoints 
When the machine is running on your local machine, the endpoints for the corresponding models will be:\
*Note: Whenever* ":id" *is used, replace it with the id of the model*

#### User
| Action | Type | Endpoint |
|--------|------|----------|
| Register User | POST | http://localhost:3000/api/v1/register |
| Login User | POST | http://localhost:3000/api/v1/login |

This is structure of the Body (JSON) for the Registration of a user:
```
{
    "user": 
    {
        "username": "Tollie",
        "email": "tollie@tottie.com",
        "password": "123456",
        "first_name": "Tollie",
        "last_name": "Oubab",
        "isAdmin": true
    }
}
```
This is structure of the Body (JSON) for the Login of a user:
```
{
    "username": "Tollie",
    "password": "123456"
}
```

#### Agent
| Action | Type | Endpoint |
|--------|------|----------|
| Fetch All Agents | GET | http://localhost:3000/api/v1/agents |
| Fetch Agent | GET | http://localhost:3000/api/v1/agents/:id |
| Create Agent | POST | http://localhost:3000/api/v1/agents |
| Update Agent | PUT | http://localhost:3000/api/v1/agents/:id |
| Delete Agent | DELETE | http://localhost:3000/api/v1/agents/:id |

This is structure of the Body (JSON) for the creation or update of an Agent:
```
{
    "first_name": "Filimon",
    "last_name": "Ousak",
    "email": "filimon@gmail.com",
    "number": "0876545328",
    "picture": "link"
}
```

#### Property
| Action | Type | Endpoint |
|--------|------|----------|
| Fetch All Properties | GET | http://localhost:3000/api/v1/properties |
| Fetch Property | GET | http://localhost:3000/api/v1/properties/:id |
| Create Property | POST | http://localhost:3000/api/v1/properties |
| Update Property | PUT | http://localhost:3000/api/v1/properties/:id |
| Delete Property | DELETE | http://localhost:3000/api/v1/properties/:id |


This is structure of the Body (JSON) for the creation or update of a Property:
```
{
    "agent_id": :id,
    "name": "house",
    "description": "house description",
    "price": 1250,
    "address": "24 Waka Str",
    "floor_area": 25,
    "land_area": 40
}
```

#### Appointment
| Action | Type | Endpoint |
|--------|------|----------|
| Fetch All Appointments | GET | http://localhost:3000/api/v1/appointments |
| Fetch Appointment | GET | http://localhost:3000/api/v1/appointments/:id |
| Create Appointment | POST | http://localhost:3000/api/v1/appointments |
| Update Appointment | PUT | http://localhost:3000/api/v1/appointments/:id |
| Delete Appointment | DELETE | http://localhost:3000/api/v1/appointments/:id |


This is structure of the Body (JSON) for the creation or update of an Appointment:
```
{
    "property_id": 3,
    "date": "2021-08-20 13:34:56.560594 UTC"
}
```

*Note: Since you can only create an appointment if the user is logged in, there's no need to include the user id*



## Authors

**Chad-Leigh van Wyk**
- Linkedin: [Chad-Leigh van Wyk](https://www.linkedin.com/in/chad-leigh-van-wyk/ )
- Github: [El-Potato-Slayer](https://github.com/El-Potato-Slayer)


## 🤝 Contributions

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/El-Potato-Slayer/Luxury-View-Backend/issues).


## Show your support

Give a ⭐️ if you like this project!

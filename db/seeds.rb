User.destroy_all
Restaurant.destroy_all

User.create(first_name: "Brian", last_name: "Fountain", gender: 1, address: "90 John John St., New York, NY", bio: "Instructor at NYCDA", age: 23, password: "1234", password_confirmation: "1234", email: "brian@nycda.com")
User.create(first_name: 'Andy', last_name: 'Beaudoin', gender: 1, address: "237 Troy Avenue, Brooklyn, NY", bio: 'Just a bill, up on capital hill.', age: 24, password:'1234', password_confirmation: '1234', email: 'abeaudoin2013@gmail.com')
User.create(first_name:"Gabrielle", last_name: "Gerlitz", gender: 1, address:"455 5th Ave, New York, NY 10016", bio:"Student at NYCDA", age: 27, password: "1234", password_confirmation: "1234", email: "gabby@nycda.com")
sleep 1
User.create(first_name: "Arunabh", last_name: "Singh", gender: 1, address: "1600 Pennsylvania Ave NW, Washington, DC 20500", bio:"your overlord!", age:26, password: "1234", email: "aps454@nyu.edu")
User.create(first_name: "Nick", last_name: "Colavita", gender: 1, address: "29-42 41st St. Astoria, New York, 11106", bio: "Student at NYCDA", age: 27, password: "1234", password_confirmation: "1234", email: "nick@nycda.com")
User.create(first_name: "Colin", last_name: "Brown", gender: 1, address: "30 Maujer. St Brooklyn, NY. 11206", bio: "i eat cats", age: 31, password: "1234", password_confirmation: "1234", email: "colin@colin.com")
sleep 1
User.create(first_name: "Nicholas", last_name: "Gati", gender: 1, address: "344 Barton Avenue, Patchogue, NY 11772", bio: "I am Nick. I am a student at NYCDA.", age: 26, password: "1234", password_confirmation: "1234", email: "ngati016@hotmail.com")
User.create(first_name: "Bob", last_name: "Builder", gender: 1, address: "100 John St., New York, NY", bio: "Student", age: 22, password: "1234", password_confirmation: "1234", email: "bob@nycda.com")
User.create(first_name: "Laura", last_name: "deVere", gender: 2, address: "403 East 91st Street, New York, NY", bio: "student", age: 24, password: "1234", password_confirmation: "1234", email: "laurad@nycda.com")
sleep 1
User.create( first_name: "Bob", last_name: "Jones", gender: 1, address: "100 John Street, New York, NY", bio: "Instructor at NYCDA", age: 23, password: "1234", password_confirmation: "1234", email: "bobjones@nycda.com" )
User.create(first_name: "Leah", last_name: "Chang", gender: 2, address: "525 7th Avenue, New York, N.Y., 10018", bio: "Student at NYCDA", age: 25, password: "1234", password_confirmation: "1234", email: "leahwchang@gmail.com")
User.create(first_name: "Artie", last_name: "Hummler", gender: 1, address: "109-44 lefferts blvd So. Ozone park 11420", email: "ahummler@optonline.net", age: 99, bio: "Student", password: "1234", password_confirmation: "1234") 
sleep 1
Restaurant.create(name: "Ippudo", address: "321 W 51st, New York, N.Y., 10019", cuisine: 7, phone: "(212) 974-2500", budget: 1)
Restaurant.create(name: "Morgan's Barbeque", address: "267 Flatbush Ave Brooklyn, NY 11217", cuisine: 0, budget: 1, phone: "(718) 622-2224" )
Restaurant.create(name: 'Prime Meats', address: '465 Court St, Brookyln, NY, 11231', cuisine: 10, budget: 1, phone: '7182140327')
sleep 1
Restaurant.create(name:"Veselka", address: "144 2nd Ave, New York, NY 10003", cuisine: 2, budget: 1, phone: "(212) 228-9682")
Restaurant.create(name: "Sugar Freak", address: "36-18 30th Ave, Astoria, NY 11103", cuisine: 3, budget: 1, phone: "(718) 726-5850")
Restaurant.create(name: "Bareburger", address: "33-21 31st Ave, Astoria, NY 11103", cuisine: 8, budget: 1, phone: "(718) 777-7011")
sleep 1
Restaurant.create(name: "Reichenbach Hall", address: "5 W 37th St, New York, NY", cuisine: 9, budget: 1, phone: "(212) 302-7744")
Restaurant.create(name: "Momofuku Ssam Bar", address: "207 2nd Ave, New York, NY 10003", cuisine: 11,  budget: 1, phone: "212-254-3500")
Restaurant.create(name: "Le Barricou", address: "533 Grand St, Brooklyn, NY 11211", cuisine: 4, budget: 1, phone: "718.782.7372" )
sleep 1
Restaurant.create(name: "Taj Kebab King", address: "568 Grand St, Brooklyn, NY 11211", cuisine: 6, budget: 1, phone: "718.782.1722" )
Restaurant.create(name: "Sapporo Haru", address: "622 Manhattan Ave, Brooklyn, NY 11222", cuisine: 7, budget: 1, phone: "718.389.9712" )
Restaurant.create(name: "Delmonico's", address: "56 beaver st New York, Ny 10004", cuisine: 0, budget: 2, phone: "212-509-1144")
sleep 1
Restaurant.create(name: "BBD Beers, Burgers, Desserts", address: "49 NY-25A, Rocky Point, NY 11778", phone: "631-849-1620", cuisine: 8, budget: 1)
Restaurant.create(name: "McDonalds", address: "160 Broadway, Brooklyn, NY 11206", cuisine: 7, budget: 0, phone: "718.389.9712" )
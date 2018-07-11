# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Favorite.destroy_all
Review.destroy_all
Listing.destroy_all

alan = User.create(first_name: "Alan", last_name: "Golman", firm: "IMRG", password: "pebbles723", email: "alan.golman@imrg.com", phone_number: "5166699024", realtor: true)

# alex = User.create(first_name: "Alexandra", last_name: "Maluma", email: "alex@email.com", password: "dogsRGr8", realtor: false)

listing1 = Listing.create(user: alan, address_line_1: "233 Goldmans Ave", address_line_2: "6B", city: "New York", state: "New York", zipcode: "10003", price: 2200,
  description: "Move right into this charming prewar 2 bedroom home with low maintenance in the heart of the Upper East Side. The large entry hallway leads into a graciously sized formal living room and a renovated open kitchen with high-end stainless steel appliances, a built-in wine refrigerator, granite countertops and tons of storage. Both bedrooms are comparable in size, have generously sized custom closets, and get lovely natural light all day long. Other details include a windowed bathroom, well-maintained hardwood floors, high ceilings and an abundance of prewar charm. Built in 1928, 315 East 77th Street is a pet friendly co-op located on a charming tree-lined street and offers a beautifully landscaped roof deck, full-time super, basement laundry and on-site storage. Conveniently located near all major transportation (only 2 blocks to both the 6 train and 79th St thoroughfare), Equinox Gym, terrific restaurants and the city's best schools (both public and private), this lovely home is not to be missed.",
availability: "09/01/2018")

listing2 = Listing.create(user: alan, address_line_1: "54 E Houston St", address_line_2: "1C", city: "Miami", state: "Florida", zipcode: "45008", price: 1800, description: "Inquire for more info. Live in the highly coveted Rise at Brickell City Centre in this turnkey, elegant & spacious 1 bed/1.5 bathroom on the 41st floor, just under the Penthouses in Rise. Enjoy an open floor plan with 11 ft floor-to-ceiling glass windows & doors that open to breathtaking unobstructed views of the Miami skyline. Features include: Custom draperies, roman shades, gray marble floors, private terrace with stunning views, top-of-the-line appliances, quartz-stone countertops and backsplash, built in storage, modern Italian cabinetry in kitchen and baths, separate shower + tub & a finished master walk-in closet.5-star amenities - 3 levels of unparalleled shopping, dining & entertaining at BCC make this an exceptional residence investment with million dollar views.", availability: "10/20/2019")

# review1 = Review.create(listing: listing1, user: alex, title: "So trendy!", content: "blah blah blah ablha too trendy. blah blah BUT SO PERFECT!!!", noise_level: "It was moderate. Can't hear neighbors, but can hear traffic outside.", location: 4, cleanlines: 5, communication: 5, value: 4)

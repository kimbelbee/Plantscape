require "faker"

puts "Cleaning database..."
Jungleplant.destroy_all
Jungle.destroy_all
Order.destroy_all
Booking.destroy_all
User.destroy_all
Plant.destroy_all
Chatroom.destroy_all

puts "Creating a user"
user = User.create!(
  email: "hackenbroich.nina@gmail.com",
  first_name:"Nina",
  last_name: "Hackenbroich",
  password: "123456",
  admin: true,
  )

puts "Creating a user"
user2 = User.create!(
  email: "triggiano.r@gmail.com",
  first_name:"Raffaele",
  last_name: "Triggiano",
  password: "123456",
  admin: false,
  )

# puts "Creating a user"
# user3 = User.create!(
#   email: "chambre.celine@gmail.com",
#   first_name:"Celine",
#   last_name: "Chambre",
#   password: "123456",
#   admin: true,
#   )

# puts "Creating a user"
# user4 = User.create!(
#   email: "kimberly.dohmen@web.de",
#   first_name:"Kim",
#   last_name: "Dohmen",
#   password: "123456",
#   )



puts "Creating plants"
plant1 = Plant.create!(
  name: "Monstera",
  water: "Every day",
  light: "Direct light",
  soil: "Sand",
  fertilizer: "Spring-Summer: Once every 2 weeks",
  repotting: "Every 12 to 18 months: Repotting in a bigger pot",
  )
  image_plant = File.open("app/assets/images/Monstera_1.jpeg")
  plant1.photo.attach(io: image_plant, filename: 'image.jpeg', content_type: 'image/jpeg')

puts "Creating plants"
plant2 = Plant.create!(
  name: "Ficus Elastica",
  water: "Once per week",
  light: "Shadow is better",
  soil: "Silt",
  fertilizer: "Spring-Summer: Once every week",
  repotting: "Every 8 to 12 months: It likes medium pots",
  )
  image_plant = File.open("app/assets/images/Ficus_1.jpg")
  plant2.photo.attach(io: image_plant, filename: 'image.jpg', content_type: 'image/jpg')

puts "Creating plants"
plant3 = Plant.create!(
  name: "Snake Plant",
  water: "Rare",
  light: "Everywhere",
  soil: "Clay",
  fertilizer: "Whole Year: Once every month",
  repotting: "Avoid repotting",
  )
  image_plant = File.open("app/assets/images/Snakeplant_1.jpg")
  plant3.photo.attach(io: image_plant, filename: 'image.jpg', content_type: 'image/jpg')

puts "Creating plants"
plant4 = Plant.create!(
  name: "Marble",
  water: "Rare",
  light: "Everywhere",
  soil: "Clay",
  fertilizer: "Whole Year: Once every month",
  repotting: "Avoid repotting",
  )
  image_plant = File.open("app/assets/images/Hangingplant_1.jpg")
  plant4.photo.attach(io: image_plant, filename: 'image.jpg', content_type: 'image/jpg')

puts "Creating plants"
plant5 = Plant.create!(
  name: "Chamaedorea Elegans",
  water: "Once per week",
  light: "Shadow is better",
  soil: "Silt",
  fertilizer: "Spring-Summer: Once every week",
  repotting: "Every 8 to 12 months: It likes medium pots",
  )
  image_plant = File.open("app/assets/images/ChamaedoreaElegans_1.jpg")
  plant5.photo.attach(io: image_plant, filename: 'image.jpg', content_type: 'image/jpg')

puts "Creating plants"
plant6 = Plant.create!(
  name: "Peace Lily",
  water: "Every day",
  light: "Direct light",
  soil: "Sand",
  fertilizer: "Spring-Summer: Once every 2 weeks",
  repotting: "Every 12 to 18 months: Repotting in a bigger pot",
  )
  image_plant = File.open("app/assets/images/PeaceLily_4.jpg")
  plant6.photo.attach(io: image_plant, filename: 'image.jpg', content_type: 'image/jpg')

puts "Creating plants"
plant6 = Plant.create!(
  name: "Calathea Orbifolia",
  water: "Every day",
  light: "Direct light",
  soil: "Sand",
  fertilizer: "Spring-Summer: Once every 2 weeks",
  repotting: "Every 12 to 18 months: Repotting in a bigger pot",
  )
  image_plant = File.open("app/assets/images/CalatheaOrbifolia_2.jpeg")
  plant6.photo.attach(io: image_plant, filename: 'image.jpg', content_type: 'image/jpeg')

puts "Creating plants"
plant6 = Plant.create!(
  name: "Aglaonema",
  water: "Every day",
  light: "Direct light",
  soil: "Sand",
  fertilizer: "Spring-Summer: Once every 2 weeks",
  repotting: "Every 12 to 18 months: Repotting in a bigger pot",
  )
  image_plant = File.open("app/assets/images/Aglaonema_2.jpg")
  plant6.photo.attach(io: image_plant, filename: 'image.jpg', content_type: 'image/jpg')

puts "Creating plants"
plant6 = Plant.create!(
  name: "Maranta Leuconeura",
  water: "Every day",
  light: "Direct light",
  soil: "Sand",
  fertilizer: "Spring-Summer: Once every 2 weeks",
  repotting: "Every 12 to 18 months: Repotting in a bigger pot",
  )
  image_plant = File.open("app/assets/images/MarantaLeuconeura_1.jpg")
  plant6.photo.attach(io: image_plant, filename: 'image.jpg', content_type: 'image/jpg')


# Bookins

# 10. times do
#   puts "Creating Bookings"
#   Booking.create!(
#     number_of_plants: [1..10].sample,
#     key:"Bla",
#     price: 1.2,
#     jungle: 1
#     )
# end



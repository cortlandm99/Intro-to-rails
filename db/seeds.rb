require "net/http"
require "json"
require "open-uri"

Adoption.destroy_all
User.destroy_all
Dog.destroy_all
Breed.destroy_all

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

breed_url = "https://dog.ceo/api/breeds/list/all"
breed_uri = URI(breed_url)
breed_response = Net::HTTP.get(breed_uri)
breeds = JSON.parse(breed_response)['message'].keys

breeds.each do |breed|
  new_breed = Breed.find_or_create_by(name: breed)

  image_url = "https://dog.ceo/api/breed/#{breed}/images/random"
  image_uri = URI(image_url)
  image_response = Net::HTTP.get(image_uri)
  image = JSON.parse(image_response)

  Dog.create(
    name: Faker::Creature::Dog.name,
    age: rand(1..25),
    gender: Faker::Creature::Dog.gender,
    breed: new_breed,
    description: Faker::Games::StreetFighter.quote,
    image_url: image
  )
end

puts "Created #{Breed.count} Breeds."
puts "Created #{Dog.count} Dogs."

require "net/http"
require "json"

Adoption.destroy_all
User.destroy_all
Dog.destroy_all
Breed.destroy_all

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

breed_url = "https://dog.ceo/api/breeds/list/all"
breed_uri = URI(breed_url)
breed_response = Net::HTTP.get(breed_uri)
JSON.parse(breed_response)['message'].keys

def fetch_breed_image(breed)
  image_url = "https://dog.ceo/api/breed/#{breed}/images/random"
  image_uri = URI(image_url)
  image_response = Net::HTTP.get(image_uri)
  JSON.parse(image_response)['message']
end

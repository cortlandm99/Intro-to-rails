require "open-uri"

Adoption.destroy_all
User.destroy_all
Dog.destroy_all
Breed.destroy_all

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

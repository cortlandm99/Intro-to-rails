class User < ApplicationRecord
  has_many :adoptions
  has_many :dogs, through: :adoptions

  validates :name, :address, :city, :province, presence: true
  validates :phone_number, :email, presence: true, uniqueness: true
end

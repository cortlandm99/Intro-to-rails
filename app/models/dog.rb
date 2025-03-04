class Dog < ApplicationRecord
  belongs_to :breed

  has_many :adoptions
  has_many :users, through: :adoptions

  validates :name, :gender, presence: true
  validates :age, numericality: { only_integer: true }
end

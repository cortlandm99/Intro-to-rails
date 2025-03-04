class Dog < ApplicationRecord
  belongs_to :breed

  has_many :adoptions
  has_many :users, through: :adoptions
end

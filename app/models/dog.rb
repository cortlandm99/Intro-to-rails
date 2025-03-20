class Dog < ApplicationRecord
  belongs_to :breed

  has_many :adoptions
  has_many :users, through: :adoptions

  validates :name, :gender, presence: true
  validates :age, numericality: { only_integer: true }

  def self.ransackable_attributes(auth_object = nil)
    [ "age", "breed_id", "created_at", "description", "gender", "id", "id_value", "image_url", "name", "updated_at" ]
  end

  def self.ransackable_associations(auth_object = nil)
    [ "adoptions", "breed", "users" ]
  end

  Dog.page(1).per(10)
end

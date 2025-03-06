class Breed < ApplicationRecord
  has_many :dogs

  validates :name, presence: true

  def self.ransackable_associations(auth_object = nil)
    [ "dogs" ]
  end

  def self.ransackable_attributes(auth_object = nil)
    [ "created_at", "id", "id_value", "name", "updated_at" ]
  end
end

class Adoption < ApplicationRecord
  belongs_to :dog
  belongs_to :user

  validates :adoption_date, presence: true

  def self.ransackable_attributes(auth_object = nil)
    [ "adoption_date", "created_at", "dog_id", "id", "updated_at", "user_id" ]
  end
end

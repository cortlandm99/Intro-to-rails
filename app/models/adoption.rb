class Adoption < ApplicationRecord
  belongs_to :dog
  belongs_to :user

  validates :adoption_date, presence: true
end

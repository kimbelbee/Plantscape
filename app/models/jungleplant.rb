class Jungleplant < ApplicationRecord
  #Raffa fixing associations with Santi
  belongs_to :plant
  belongs_to :jungle
  has_one_attached :photo

  #adding VALIDATION
  validates :comments, length: { maximum: 300,
    too_long: "%{count} characters is the maximum allowed" }
  validates :status, presence: true
end

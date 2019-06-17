class Place < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments

  geocoded_by :address
  after_validation :geocode
  
  validates :name, presence: true, length: { minimum: 3, too_short: "must be at least %{count} characters long"}
  validates :address, :description, presence: true
end

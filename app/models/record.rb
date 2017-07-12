class Record < ApplicationRecord
  belongs_to :user
  has_many :order
  validates :name, presence: true
  validates :artist, uniqueness: true, presence: true
  validates :price, presence: true
  has_attachment :photo
  validates :photo, presence: true
end

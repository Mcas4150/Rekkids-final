class Record < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :artist, uniqueness: true, presence: true
  validates :price, presence: true
end

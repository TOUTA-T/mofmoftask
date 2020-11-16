class Property < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :fee, presence: true
  validates :address, presence: true, uniqueness: true
  validates :age, presence: true
  validates :remarks, presence: true

  has_many :nearest_stations
  accepts_nested_attributes_for :nearest_stations
end

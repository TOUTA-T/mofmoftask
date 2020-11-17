class Property < ApplicationRecord
  validates :name, presence: true
  validates :fee, presence: true
  validates :address, presence: true
  validates :age, presence: true
  validates :remarks, presence: true

  has_many :nearest_stations, dependent: :destroy
  accepts_nested_attributes_for :nearest_stations, reject_if: :all_blank
end

class State < ActiveRecord::Base
  has_many :us_cities
  validates :name, presence: true, uniqueness: true
  validates_length_of :abbreviation, is: 2
end

class State < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates_length_of :abbreviation, is: 2
end

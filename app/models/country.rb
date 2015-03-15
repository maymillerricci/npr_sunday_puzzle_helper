class Country < ActiveRecord::Base
  has_many :capitals

  validates :name, presence: true, uniqueness: true
end

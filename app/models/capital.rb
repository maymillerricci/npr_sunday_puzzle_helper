class Capital < ActiveRecord::Base
  belongs_to :country, required: true

  validates_presence_of :name
end

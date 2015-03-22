class UsCity < ActiveRecord::Base
  belongs_to :state, required: true

  validates_presence_of :name
end

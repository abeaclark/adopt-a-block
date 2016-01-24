class Block < ActiveRecord::Base
  has_and_belongs_to_many :businesses
  has_and_belongs_to_many :users
  has_many :events
  has_many :issues
end

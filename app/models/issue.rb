class Issue < ActiveRecord::Base
  belongs_to :block
  belongs_to :user
end

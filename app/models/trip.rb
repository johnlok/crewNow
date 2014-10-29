class Trip < ActiveRecord::Base
  belongs_to :race
  has_many :crew_members
end

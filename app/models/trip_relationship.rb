class TripRelationship < ActiveRecord::Base
  belongs_to :trip
  belongs_to :crew_member
end

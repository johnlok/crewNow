class TripCrewRelationship < ActiveRecord::Base
  belongs_to :trip
  belongs_to :crewmember
end

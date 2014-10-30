class Trip < ActiveRecord::Base
  has_many :trip_relationships, :class_name => 'TripRelationship'
  has_many :crew_members, :through => :trip_relationships
  belongs_to :race
end

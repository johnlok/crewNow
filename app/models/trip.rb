class Trip < ActiveRecord::Base
  validates_presence_of :boat_name


  has_many :trip_relationships, :class_name => 'TripRelationship'
  has_many :crew_members, :through => :trip_relationships
  belongs_to :user
  belongs_to :race
end

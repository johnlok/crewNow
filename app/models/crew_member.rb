class CrewMember < ActiveRecord::Base
  has_many :trip_relationships, :class_name => 'TripRelationship'
  has_many :trips, :through => :trip_relationships
  validates_presence_of :name, :email, :tel, :bio
  validates_numericality_of :tel
end

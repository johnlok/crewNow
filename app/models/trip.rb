class Trip < ActiveRecord::Base
  has_many :triprelationships, :class_name => 'TripRelationship'
  has_many :crewmembers, :through => :triprelationships
  belongs_to :race
end

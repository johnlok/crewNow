class CrewMember < ActiveRecord::Base
  has_many :triprelationships, :class_name => 'TripRelationship'
  has_many :trips, :through => :triprelationships
  validates_presence_of :name, :email, :tel, :bio
  validates_numericality_of :tel
end

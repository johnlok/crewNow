class Trip < ActiveRecord::Base
  has_many :triprelationships
  has_many :crewmembers, :through => :triprelationships
  belongs_to :race
end

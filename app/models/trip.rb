class Trip < ActiveRecord::Base
  belongs_to :race
  has_many :tripcrewrelationships
  has_many :crewmembers, :through => :tripcrewrelationships
end

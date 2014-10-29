class CrewMember < ActiveRecord::Base
  validates_presence_of :name, :email, :telephone, :bio
  belongs_to :trip
end

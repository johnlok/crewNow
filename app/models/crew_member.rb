class CrewMember < ActiveRecord::Base
  has_many :triprelationships
  has_many :trips, :through => :triprelationships
  validates_presence_of :name, :email, :tel, :bio
  validates_numericality_of :tel
  after_initialize :init

  def init
    self.confirmed ||= false
    self.available ||= true
  end
end

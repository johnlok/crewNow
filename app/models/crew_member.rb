class CrewMember < ActiveRecord::Base
  validates_presence_of :name, :email, :tel, :bio
  validates_numericality_of :tel
  has_many :tripcrewrelationships
  has_many :tripcrewrelationship, :through => :tripcrewrelationships
  after_initialize :init

  def init
    self.confirmed ||= false
    self.available ||= true
  end
end

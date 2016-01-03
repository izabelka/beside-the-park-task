class Project < ActiveRecord::Base
  belongs_to :developer
  acts_as_votable

  validates :developer, presence: true
  validates :name, presence: true#, uniqueness: true
  validates_uniqueness_of :name, scope: :developer #added validation of the uniuniqueness of name but only for a particular developer
  validates :description, presence: true
end

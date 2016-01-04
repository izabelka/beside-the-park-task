class Project < ActiveRecord::Base
  belongs_to :developer
  has_many :participation, dependent: :destroy
  has_and_belongs_to_many :languages, :join_table => "participation"
  acts_as_votable

  validates :developer, presence: true
  validates :name, presence: true#, uniqueness: true
  validates_uniqueness_of :name, scope: :developer #added validation of the uniuniqueness of name but only for a particular developer
  validates :description, presence: true
  
  accepts_nested_attributes_for :languages #iza
end

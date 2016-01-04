class Language < ActiveRecord::Base
  has_many :participations, dependent: :destroy
  has_and_belongs_to_many :projects, :join_table => "participation"
  
  
  
  #validates :title, presence: true
end

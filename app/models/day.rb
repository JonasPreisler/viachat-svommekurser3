class Day < ApplicationRecord
  validates :date, :presence => true, :uniqueness => {:scope=>:user_id}
  belongs_to :event
  has_many :programs
end
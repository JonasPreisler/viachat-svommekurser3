class Day < ApplicationRecord
  validates :date, :presence => true, :uniqueness => {:scope=>:event_id}
  belongs_to :event
  belongs_to :user
  has_many :programs
end
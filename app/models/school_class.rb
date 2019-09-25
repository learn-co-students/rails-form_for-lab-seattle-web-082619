class SchoolClass < ApplicationRecord
  has_many :students
  validates :room_number, presence: true 
end

class Student < ActiveRecord::Base
  belongs_to :school_class
  def to_s
    self.first_name + " " + self.last_name
  end
  validates :first_name, presence: true 
  validates :last_name, presence: true

end
class Habit < ActiveRecord::Base
  attr_accessible :description, :frequency, :frequencytime, :habitID, :name

  validates_presence_of :name, :on => :create

  belongs_to :step

end

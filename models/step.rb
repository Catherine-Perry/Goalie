class Step < ActiveRecord::Base
  attr_accessible :completed, :description, :name, :stepID

  validates_presence_of :name, :on => :create

  has_many :habits
  belongs_to :goal
end

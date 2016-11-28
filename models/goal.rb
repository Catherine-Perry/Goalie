class Goal < ActiveRecord::Base
  attr_accessible :completed, :deadline, :description, :name

  validates_presence_of :name, :on => :create
  validates_presence_of :deadline, :on => :create

  has_many :steps 
  has_many :habits
  belongs_to :user

  def completed?
  	completed.present?
  end

end

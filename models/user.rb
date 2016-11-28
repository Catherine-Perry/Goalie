class User < ActiveRecord::Base
  attr_accessible :firstname, :id, :lastname, :password, :username

  validates_presence_of :firstname, :on => :create
  validates_presence_of :lastname, :on => :create
  validates_presence_of :password, :on => :create
  validates_presence_of :username, :on => :create

  has_many :goals
end

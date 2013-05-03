class Venue < ActiveRecord::Base
	validates_presence_of :name
	attr_accessible :address, :name
	has_many :events, :dependent => :destroy
end

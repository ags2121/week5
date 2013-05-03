class Event < ActiveRecord::Base

	validates_presence_of :title
	validates :datetime, :uniqueness => {:scope => :venue_id}
	attr_accessible :datetime, :title, :venue_id
	belongs_to :venue

end

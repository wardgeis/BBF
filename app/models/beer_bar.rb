class BeerBar < ActiveRecord::Base
	validates_presence_of :name, :state, :website
end

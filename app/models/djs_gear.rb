class DjsGear < ActiveRecord::Base
	# validates_uniqueness_of :gear_id, :scope => [:dj_id]
	before_save :check
	def check
		
	end
	belongs_to :dj
	belongs_to :gear
end

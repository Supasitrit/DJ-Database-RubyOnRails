class Page < ActiveRecord::Base
	# validates :title, presence: true
  	# validates :Djid, presence: true, uniqueness: true
  	belongs_to :dj
end

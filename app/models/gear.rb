class Gear < ActiveRecord::Base
	has_and_belongs_to_many  :djs
end


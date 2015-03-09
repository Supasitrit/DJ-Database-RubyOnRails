class Gear < ActiveRecord::Base
	has_and_belongs_to_many :djs, :join_table => "djs_gears"
end

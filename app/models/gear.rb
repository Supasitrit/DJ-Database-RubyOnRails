class Gear < ActiveRecord::Base
	has_many :djs_gears
	has_many :djs, through: :djs_gears
	# has_and_belongs_to_many :djs, :join_table => "djs_gears"
end

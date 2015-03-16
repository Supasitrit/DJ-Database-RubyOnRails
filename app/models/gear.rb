class Gear < ActiveRecord::Base
	has_many :djs_gears
	has_many :djs, through: :djs_gears
	has_one :geartype
	# has_and_belongs_to_many :djs, :join_table => "djs_gears"
	has_attached_file :avatar, :styles => { 
	  	:medium => "300x300>", 
	  	:small => "140x140",
	  	:thumb => "100x100>" }, 
	  	:default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, 
  	:content_type => /\Aimage\/.*\Z/
  	acts_as_commontable
end

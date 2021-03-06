class Gear < ActiveRecord::Base
	validates :name, presence: true,uniqueness: true
	has_many :djs_gears
	has_many :djs, through: :djs_gears
	belongs_to :geartype
	# has_and_belongs_to_many :djs, :join_table => "djs_gears"
	has_attached_file :avatar, :styles => { 
	  	:medium => "300x300>", 
	  	:small => "140x140",
	  	:thumb => "100x100>" }, 
	  	:default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, 
  	:content_type => /\Aimage\/.*\Z/
  	acts_as_commontable

  	def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("name like ?", "%#{query}%") 
  end
end

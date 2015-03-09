class Dj < ActiveRecord::Base
	require 'will_paginate/array'
	
	has_and_belongs_to_many :gears, :join_table => "djs_gears"

	acts_as_commontable
	# has_one :page
	# attr_accessible :title, :content
 
 #  validates :title, presence: true, uniqueness: true
 #  validates :content, presence: true
 
  # It returns the articles whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("name like ?", "%#{query}%") 
  end
  # self.per_page = 10
end

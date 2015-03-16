class Dj < ActiveRecord::Base
	require 'will_paginate/array'
	has_many :djs_gears
	has_many :gears, through: :djs_gears
	has_attached_file :avatar, :styles => { 
  		:medium => "300x300>",
  		:small => "140x140", 
  		:thumb => "100x100>" }, 
  		:default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, 
  	:content_type => /\Aimage\/.*\Z/


	acts_as_commontable
 
 #  validates :title, presence: true, uniqueness: true
 #  validates :content, presence: true
 
  # It returns the articles whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("name like ?", "%#{query}%") 
  end
  # self.per_page = 10
end

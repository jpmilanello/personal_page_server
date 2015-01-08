class Work < ActiveRecord::Base
	validates :workTitle, :workText, :workTags, :presence =>true
	has_attached_file :image
	attr_accessor :image_file_name	
end

class Work < ActiveRecord::Base
	validates :workTitle, :workText, :workTags, :presence =>true
	has_attached_file :pathImage
end

class Work < ActiveRecord::Base
	validates :workTitle, :workText, :workTags, :presence =>true
	has_attached_file :pathImage
	validates_attachment_presence :pathImage
end

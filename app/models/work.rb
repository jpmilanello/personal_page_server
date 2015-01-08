class Work < ActiveRecord::Base
	validates :workTitle,:pathImage, :workText, :workTags, :presence =>true
	has_attached_file :pathImage
end

class Work < ActiveRecord::Base
	validates :workTitle,:pathImage, :workText, :workTags, :presence =>true
	has_attached_file :pathImage, :path => ":rails_root/public/uploads/:filename"
end

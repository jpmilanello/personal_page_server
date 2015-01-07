class Work < ActiveRecord::Base
	validates :workTitle,:pathImage, :workText, :workTags, :presence =>true
end

class Work < ActiveRecord::Base
	validates :workTitle, :workText, :workTags,:workTextTranslate, :presence =>true
	has_attached_file :image

end

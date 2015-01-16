class AddWorkTextTranslateToWorks < ActiveRecord::Migration
  def change
  	add_column :works, :workTextTranslate, :text
  end
end

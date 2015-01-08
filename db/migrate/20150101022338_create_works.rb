class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :workTitle
      t.attachment :pathImage
      t.text :workText
      t.string :workTags

      t.timestamps
    end
  end
end

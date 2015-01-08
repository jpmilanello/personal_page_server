class AddWorkImageToWork < ActiveRecord::Migration
  def change
    add_column :works, :workImage, :attachment
  end
end

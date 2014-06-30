class AddImageUrlToPersonalfiles < ActiveRecord::Migration
  def change
    add_column :personalfiles, :image_url, :string
  end
end

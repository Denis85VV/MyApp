class AddConsistIdToPersonaleFile < ActiveRecord::Migration
  def change
    add_column :personalfiles, :consist_id, :integer
  end
end

class AddPositionIdToPersonaleFile < ActiveRecord::Migration
  def change
    add_column :personalfiles, :position_id, :integer
  end
end

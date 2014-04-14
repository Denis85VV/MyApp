class AddSpecialtyIdToPersonaleFile < ActiveRecord::Migration
  def change
    add_column :personalfiles, :specialty_id, :integer
  end
end

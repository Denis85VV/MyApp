class RemovePersonalefileIdFromRanks < ActiveRecord::Migration
  def change
  	remove_column :ranks, :personalefile_id, :integer
  end
end

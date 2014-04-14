class RemovePersonalfileIdFromRanks < ActiveRecord::Migration
  def change
  	remove_column :ranks, :personalfile_id, :integer
  end
end

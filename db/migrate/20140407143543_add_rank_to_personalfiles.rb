class AddRankToPersonalfiles < ActiveRecord::Migration
  def change
  	add_column :ranks, :personalfile_id, :integer
  end
end

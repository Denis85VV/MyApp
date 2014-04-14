class AddRankIdToPersonalFile < ActiveRecord::Migration
  def change
    add_column :personalfiles, :rank_id, :integer
  end
end

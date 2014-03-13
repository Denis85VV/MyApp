class AddNormalMigration < ActiveRecord::Migration
  def change
  	add_column :specialties, :faculty_id, :integer
  end
end

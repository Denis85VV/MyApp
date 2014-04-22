class AddNoteToPersonalfile < ActiveRecord::Migration
  def change
    add_column :personalfiles, :note, :string
  end
end

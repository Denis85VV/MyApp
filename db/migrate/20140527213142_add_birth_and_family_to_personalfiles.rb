class AddBirthAndFamilyToPersonalfiles < ActiveRecord::Migration
  def change
    add_column :personalfiles, :date_of_birth, :date
    add_column :personalfiles, :place_of_birth, :text
    add_column :personalfiles, :education, :string
    add_column :personalfiles, :family_status, :string
    add_column :personalfiles, :family, :string
  end
end

class AddRecruitmentOfficeIdToPersonaleFile < ActiveRecord::Migration
  def change
    add_column :personalfiles, :recruitmentoffice_id, :integer
  end
end

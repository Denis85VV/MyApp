class AddPhoneAndAddressToRecruitmentOffices < ActiveRecord::Migration
  def change
    add_column :recruitmentoffices, :phone_number, :string
    add_column :recruitmentoffices, :address, :string
  end
end

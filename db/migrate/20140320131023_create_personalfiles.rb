class CreatePersonalfiles < ActiveRecord::Migration
  def change
    create_table :personalfiles do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :gender
      t.string :year
      t.string :traningcourse
      t.string :academicyear
      t.string :specialaccount
      t.string :mobileorder
      t.string :category

      t.timestamps
    end
  end
end

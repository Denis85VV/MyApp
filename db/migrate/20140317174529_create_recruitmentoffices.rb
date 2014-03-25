class CreateRecruitmentoffices < ActiveRecord::Migration
  def change
    create_table :recruitmentoffices do |t|
      t.string :smallname
      t.text :bigname

      t.timestamps
    end
  end
end

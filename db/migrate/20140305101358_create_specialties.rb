class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.string :specialtyname
      t.string :specialtynumber

      t.timestamps
    end
  end
end

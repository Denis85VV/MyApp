class CreateConsists < ActiveRecord::Migration
  def change
    create_table :consists do |t|
      t.string :name

      t.timestamps
    end
  end
end

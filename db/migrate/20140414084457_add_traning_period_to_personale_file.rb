class AddTraningPeriodToPersonaleFile < ActiveRecord::Migration
  def change
    add_column :personalfiles, :traning_period, :string
  end
end

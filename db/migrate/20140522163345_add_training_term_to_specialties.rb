class AddTrainingTermToSpecialties < ActiveRecord::Migration
  def change
    add_column :specialties, :training_term, :integer
  end
end

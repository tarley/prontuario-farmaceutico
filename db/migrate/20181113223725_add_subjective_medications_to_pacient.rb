class AddSubjectiveMedicationsToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :subjective_medications, :text
  end
end

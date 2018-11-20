class AddAlternativeTherapyToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :alternative_therapy, :text
  end
end

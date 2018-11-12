class AddAlcoholicBeveragesToPacients < ActiveRecord::Migration
  def change
    add_column :pacients, :alcoholic_beverages, :text
  end
end

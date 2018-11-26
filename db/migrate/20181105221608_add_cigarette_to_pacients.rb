class AddCigaretteToPacients < ActiveRecord::Migration
  def change
    add_column :pacients, :cigarette, :text
  end
end

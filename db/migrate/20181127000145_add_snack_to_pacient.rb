class AddSnackToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :snack, :time
  end
end

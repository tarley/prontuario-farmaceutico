class AddCfToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :CF, :time
  end
end

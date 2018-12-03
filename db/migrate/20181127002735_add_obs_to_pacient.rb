class AddObsToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :obs, :text
  end
end

class AddObsToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :obs, :string
  end
end

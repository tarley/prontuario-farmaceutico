class AddObsdrinkToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :obsdrink, :text
  end
end

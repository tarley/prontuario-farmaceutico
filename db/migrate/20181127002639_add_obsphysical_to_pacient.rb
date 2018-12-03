class AddObsphysicalToPacient < ActiveRecord::Migration
  def change
    add_column :pacients, :obsphysical, :text
  end
end

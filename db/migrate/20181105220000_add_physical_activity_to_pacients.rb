class AddPhysicalActivityToPacients < ActiveRecord::Migration
  def change
    add_column :pacients, :physical_activity, :text
  end
end

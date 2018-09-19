class CreateServiceAccesses < ActiveRecord::Migration
  def change
    create_table :service_accesses do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end

class CreateFarmerDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :farmer_details do |t|
      t.string   :first_name, null: false
      t.string   :middle_name, null: false
      t.string   :last_name,  null: false
      t.string   :address,    null: false
      t.string   :phone_number, null: false
      t.string   :transportation_vehicle, null: false
      t.string   :email, unique: true
      t.timestamps
    end
  end
end
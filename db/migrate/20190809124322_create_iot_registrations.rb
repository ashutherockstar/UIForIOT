class CreateIotRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :iot_registrations do |t|
      t.string :name
      t.text :address
      t.integer :age
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end

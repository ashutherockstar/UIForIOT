class CreateUserregistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :userregistrations do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end

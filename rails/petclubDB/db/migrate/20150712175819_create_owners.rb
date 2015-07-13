class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.integer :age
      t.text :bio
      t.integer :club_id

      t.timestamps null: false
    end
  end
end

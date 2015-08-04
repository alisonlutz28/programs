class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :location
      t.integer :age
      t.integer :creature_id

      t.timestamps null: false
    end
  end
end

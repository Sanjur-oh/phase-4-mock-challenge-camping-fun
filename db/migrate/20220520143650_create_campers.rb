class CreateCampers < ActiveRecord::Migration[6.1]
  def change
    create_table :campers do |t|
      t.string :name
      t.integer :age
      t.references :signups, null: false, foreign_key: true

      t.timestamps
    end
  end
end

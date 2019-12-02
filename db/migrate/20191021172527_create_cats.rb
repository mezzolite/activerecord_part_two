class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class AddBreedToCats < ActiveRecord::Migration[6.0]
  def change
    add_reference :cats, :breed, foreign_key: true
  end
end

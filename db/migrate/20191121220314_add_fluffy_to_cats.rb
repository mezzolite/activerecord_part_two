class AddFluffyToCats < ActiveRecord::Migration[6.0]
  def change
    add_column :cats, :fluffy, :boolean
  end
end

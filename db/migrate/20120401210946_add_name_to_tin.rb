class AddNameToTin < ActiveRecord::Migration
  def change
    add_column :tins, :name, :string
  end
end

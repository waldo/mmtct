class CreateTins < ActiveRecord::Migration
  def change
    create_table :tins do |t|
      t.string :code

      t.timestamps
    end
  end
end

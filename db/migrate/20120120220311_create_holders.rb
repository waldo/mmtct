class CreateHolders < ActiveRecord::Migration
  def change
    create_table :holders do |t|
      t.references :tin
      t.string :name
      t.string :recipe_title
      t.text :recipe_text
      t.string :pic_uid
      t.string :ip

      t.timestamps
    end
    add_index :holders, :tin_id
  end
end

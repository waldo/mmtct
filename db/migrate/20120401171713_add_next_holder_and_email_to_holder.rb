class AddNextHolderAndEmailToHolder < ActiveRecord::Migration
  def change
    add_column :holders, :email, :string
  end
end

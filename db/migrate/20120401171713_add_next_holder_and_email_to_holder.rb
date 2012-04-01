class AddNextHolderAndEmailToHolder < ActiveRecord::Migration
  def change
    add_column :holders, :recipient_email, :string
    add_column :holders, :recipient_name, :string
    add_column :holders, :email, :string
  end
end

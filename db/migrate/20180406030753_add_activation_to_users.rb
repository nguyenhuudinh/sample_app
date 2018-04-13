class AddActivationToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :activation_digest, :tring
    add_column :users, :activated, :boolean, default: false
    add_column :users, :activated_at, :datetime
  end
end

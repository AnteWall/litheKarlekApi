class FreezeUser < ActiveRecord::Migration
  def change
    add_column :users, :frozen, :boolean, :default => false
  end
end

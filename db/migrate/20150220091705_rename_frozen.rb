class RenameFrozen < ActiveRecord::Migration
  def change
    rename_column :users, :frozen, :frozen_account
  end
end

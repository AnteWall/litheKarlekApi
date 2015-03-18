class ChangeFromToUser < ActiveRecord::Migration
  def change
    remove_column :messages, :from
    add_column :messages, :user_id, :integer
  end
end

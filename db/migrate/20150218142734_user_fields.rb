class UserFields < ActiveRecord::Migration
  def change
    change_column :users, :description, :text
    add_column :users, :name, :string
  end
end

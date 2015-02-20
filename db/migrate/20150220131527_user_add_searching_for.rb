class UserAddSearchingFor < ActiveRecord::Migration
  def change
    add_column :users, :view_for, :text, array: true, default: []
  end
end

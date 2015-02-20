class ChangeViewForDefault < ActiveRecord::Migration
  def chang
    add_column :users, :view_for, :text, array: true, default: ['Man','Kvinna']
  end
end

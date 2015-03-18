class RemoveTo < ActiveRecord::Migration
  def change
    remove_column :messages, :to
  end
end

class GenderDEfualt < ActiveRecord::Migration
  def change
    change_column :users, :gender, :string, :default => 'male'
  end
end

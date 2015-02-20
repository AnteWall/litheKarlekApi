class GenderchangeDefault < ActiveRecord::Migration
  def change
    change_column :users, :gender, :string, :default => 'Man'
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_token
      t.string :description
      t.string :education

      t.timestamps
    end
  end
end

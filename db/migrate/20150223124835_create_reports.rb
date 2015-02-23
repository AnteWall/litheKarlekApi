class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.integer :matched_user_id
      t.boolean :liked, default: false

      t.timestamps
    end
  end
end

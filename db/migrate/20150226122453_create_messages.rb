class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :from
      t.integer :to
      t.integer :match_id
      t.text :message
      t.timestamps
    end
  end
end

class ConnectEducation < ActiveRecord::Migration
  def change
    add_column(:users, :education_id, :integer)
    remove_column(:users, :education)
  end
end

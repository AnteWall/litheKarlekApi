class Report < ActiveRecord::Base
  belongs_to :user
  belongs_to :matched_user, class_name: 'User', foreign_key: 'matched_user_id'
end

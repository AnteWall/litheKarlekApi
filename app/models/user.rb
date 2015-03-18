class User < ActiveRecord::Base
  has_many :images
  has_many :matches_u1, class_name: 'Match', foreign_key: 'user_1_id'
  has_many :matches_u2, class_name: 'Match', foreign_key: 'user_2_id'
  has_many :message
  has_many :reports
  belongs_to :education
  scope :all_except, ->(user) { where.not(id: user) }
  scope :not_frozen, -> { where(:frozen_account => false) }
  scope :remove_reports, -> (current_user) {
    where.not(:id => Report.where(user: current_user).select('matched_user_id').map(&:matched_user_id))
  }
  
  def matches(current_user)
    arr = matches_u1 + matches_u2
    arr = arr.sort_by { |a| a.set_current_user(current_user); a[:created_at] }.reverse
  end

  def find_matches
    User.where(:gender => self.view_for).all_except(self).not_frozen.remove_reports(self).limit(10)
  end

  def images_url
    arr = []
    self.images.each do |img|
      arr.append(img.get_url)
    end
    return arr
  end

  def as_json(options={})
    super(:exclude => [:frozen,:user_token],:include => [:education], :methods => :images_url)
  end
end

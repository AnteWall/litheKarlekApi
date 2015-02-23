class User < ActiveRecord::Base
  has_many :images
  belongs_to :education
  has_many :reports
  scope :all_except, ->(user) { where.not(id: user) }
  scope :not_frozen, -> { where(:frozen_account => false) }
  scope :remove_reports, -> (current_user) {
    where.not(:id => Report.where(user: current_user).select('matched_user_id').map(&:matched_user_id))
  }

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

  def as_json(req,options={})
    super(:exclude => [:frozen,:user_token],:include => [:education], :methods => :images_url)
  end
end

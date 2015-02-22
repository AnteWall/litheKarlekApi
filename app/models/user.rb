class User < ActiveRecord::Base
  has_many :images
  belongs_to :education
  scope :all_except, ->(user) { where.not(id: user) }
  scope :not_frozen, -> () { where(:frozen_account => false) }
  def find_matches
    User.where(:gender => self.view_for).all_except(self).not_frozen.limit(10)
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

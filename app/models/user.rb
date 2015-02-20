class User < ActiveRecord::Base
  has_many :images
  belongs_to :education
 
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

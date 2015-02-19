class User < ActiveRecord::Base
  has_many :images
  belongs_to :education
 
  def images_url
    arr = []
    #base = "http://localhost:3000"
    base = "http://192.168.1.102:3000"
    self.images.each do |img|
      arr.append(base + img.file.url)
    end
    return arr
  end

  def as_json(req,options={})
    super(:include => [:education], :methods => :images_url)
  end
end

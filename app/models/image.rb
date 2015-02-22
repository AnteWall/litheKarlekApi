class Image < ActiveRecord::Base
  has_attached_file :file
  validates_attachment_content_type :file, :content_type => /\Aimage/
  belongs_to :user

  def get_url
    #base = "http://192.168.1.102:3000"
    base = "http://localhost:3000"
    if Rails.env.production?
      base = "http://lithekarlek.klante.webfactional.com"
    end
    base + self.file.url
  end

  def as_json(options={})
    options[:methods] = :get_url
    super(options)
  end
end

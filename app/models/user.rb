class User < ActiveRecord::Base
  belongs_to :education

  def as_json(options={})
    super(:include => :education)
  end
end

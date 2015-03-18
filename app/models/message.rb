class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :match

  def as_json(options={})
    options[:include] = {
      :user => { :only => [:name]},
    }
    super(options)
  end
end

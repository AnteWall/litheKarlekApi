class Match < ActiveRecord::Base
  belongs_to :user_1, class_name: 'User', foreign_key: 'user_1_id'
  belongs_to :user_2, class_name: 'User', foreign_key: 'user_2_id'
  has_many :messages
 
  def self.check_match(user_1,user_2)
    report_1 = Report.where(:user => user_1, matched_user: user_2, liked: true).first
    if report_1.nil?
      return false
    else
      report_2 = Report.where(:user => user_2, matched_user: user_1, liked: true).first
      unless report_2.nil?
        Match.create(:user_1 => user_1, user_2: user_2)
        return true
      end
    end
    return false
  end

  def contains_user(user)
    return true if self.user_1 == user or self.user_2 == user
    return false
  end
  
  def set_current_user(user)
    @current_user = user
  end
  def current_user
    @current_user
  end

  def unread
    return 0 if current_user.nil?
    return self.messages.where(:viewed => false).where.not(:user => current_user).count
  end

  def as_json(current_user,options={})
    puts "#"*100
    puts current_user
    options[:include] = {
      :user_1 => { :methods => :images_url },
      :user_2 => { :methods => :images_url }
    }
    options[:methods] = [
      :unread
    ]
    super(options)
  end

end

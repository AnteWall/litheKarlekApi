class MatchController < SecuredController

  def find
    render json: current_user.find_matches
    #render json: User.find(1).find_matches
  end
  
  def matches
    render json: current_user.matches(current_user).as_json(current_user)
  end

  def messages
    match = Match.find(params[:id])
    limit = 15
    unless params[:limit].nil?
      limit = params[:limit]
    end
    offset = 0
    unless params[:offset].nil?
      offset = params[:offset]
    end

    if match.contains_user(current_user)
      messages = match.messages.limit(limit).offset(offset).order('created_at desc')
      messages.each do |msg|
        if msg.user != current_user
          msg.viewed = true
          msg.save! 
        end 
      end
      render json: messages
    else
      render text: "Unauthorized", status: :unauthorized
    end
  end
end

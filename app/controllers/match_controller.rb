class MatchController < SecuredController

  def matches
    #render json: current_user.find_matches
    render json: User.find(1).find_matches
  end

  def like

  end

  def dislike

  end

end

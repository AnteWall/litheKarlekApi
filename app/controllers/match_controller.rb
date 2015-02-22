class MatchController < SecuredController

  def matches
    render json: current_user.find_matches
  end

end

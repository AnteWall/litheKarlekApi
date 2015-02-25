class MatchController < SecuredController

  def find
    render json: current_user.find_matches
    #render json: User.find(1).find_matches
  end
  
  def matches
    render json: current_user.matches
  end
end

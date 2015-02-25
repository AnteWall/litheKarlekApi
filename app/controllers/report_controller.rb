class ReportController < SecuredController

  def report
    matched = User.find(params[:matched])
    Report.where(user: current_user,matched_user_id: matched, liked: params[:liked]).first_or_create
    match = Match.check_match(current_user,matched)
    render json: {success: true , match: match}
  end

end

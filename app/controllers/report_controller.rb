class ReportController < SecuredController

  def report
    puts params
    Report.where(user: current_user,matched_user_id: params[:matched], liked: params[:liked]).first_or_create
    render json: {success: true }
  end

end

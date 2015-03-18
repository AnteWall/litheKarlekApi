class MessageController < SecuredController

  def new
    match = Match.find(params[:id])
    if match.contains_user(current_user)
      msg = Message.new(:user => current_user, match: match, message: params[:message])
      if msg.save!
        render json: { success: true } and return;
      else
        render json: { success: true } and return;
      end
    else
      render text: "Unauthorized", status: :unauthorized and return;
    end
  end

end

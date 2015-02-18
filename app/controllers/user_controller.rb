class UserController < SecuredController

  def show
    render json: User.find(params[:id])
  end

  def me
    render json: current_user
  end

  def update
  end
end

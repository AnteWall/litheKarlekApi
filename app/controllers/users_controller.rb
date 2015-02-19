class UsersController < SecuredController
  def show
    render json: User.find(params[:id]).as_json(request_uri())
  end

  def me
    render json: current_user.as_json(request.original_url)
  end

  def update
    puts params
    edu = Education.find(params[:education][:id])
    puts current_user
    current_user.education = edu 
    current_user.description = params[:description]
    if current_user.save
      render json: {success: true} and return
    else
      render json: {success: false} and return
    end
  end
end

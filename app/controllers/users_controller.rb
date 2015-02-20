class UsersController < SecuredController
  def show
    render json: User.find(params[:id]).as_json(request_uri())
  end

  def me
    render json: current_user
  end
  
  def update_settings
    vf = []
    params[:lookingFor].each do | lf |
      if lf["isChecked"] == true
        vf.append(lf['name']) 
      end 
    end
    current_user.view_for = vf
    current_user.frozen_account = params[:frozen]

    if current_user.save
      render json: {success: true} and return
    else
      render json: {success: false} and return
    end
  end

  def update
    edu = Education.find(params[:education][:id])
    current_user.education = edu 
    current_user.gender = params[:gender]
    current_user.description = params[:description]
    current_user.name = params[:name]
    if current_user.save
      render json: {success: true} and return
    else
      render json: {success: false} and return
    end
  end
end

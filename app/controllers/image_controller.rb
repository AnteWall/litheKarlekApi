class ImageController < SecuredController
  def new
    img = Image.create!(:user => current_user, :file => params[:file])
    if img.save
     render json: {success:true}
    else
     render json: {success:true} 
    end
  end

  def update
  end
end

class ImageController < SecuredController
  def new
    puts current_user.images.size.inspect
    if current_user.images.size <= 6
      img = Image.create!(:user => current_user, :file => params[:file])
      if img.save
        render json: {success:true}
      else
        render json: {success:false} 
      end
    else

      render :json => { "error" => "Du kan ha maximalt 7st bilder på ditt konto"}.to_json
    end
  end

  def me
    render json: Image.where(:user => current_user)
  end
  
  def delete
    img = Image.find(params[:id])
    if img.user == current_user
      img.delete
      render json: {success: true} and return
    end
    render json: {success: false}
  end

  def update
  end
end

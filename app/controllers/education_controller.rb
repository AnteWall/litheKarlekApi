class EducationController < SecuredController
  def all
    render json: Education.all.order(:name)
  end
end

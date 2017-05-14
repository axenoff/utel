class DistrictsController < ApplicationController
  before_filter :require_permission

  def require_permission
    if current_user.try(:admin?)
    else 
      redirect_to new_user_session_path
    end
  end


  def new
    if current_user.try(:admin?)
  # do something
    end
  end

  def create
    @district = District.create(district_params)
      redirect_to districts_path

  end

  def index
    @districts = District.all
  end

  def show
  end

  def edit
    @district = District.find(params[:id])
  end

  def update
    @district = District.find(params[:id])
    if @district.update(district_params)
      redirect_to districts_path
    else
      render action: 'edit'
    end
  end

  def destroy
    @district = District.find(params[:id])
    @district.destroy
    redirect_to districts_path
  end

  private
  def district_params
    params.require(:district).permit(:district)
  end

end



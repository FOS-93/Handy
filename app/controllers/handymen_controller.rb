class HandymenController < ApplicationController

  def index
    # Hacemos un reject para sacar al Handyman.id y liste solo los Handyman del resto
    @handyman = Handyman.all.reject { |handyman| handyman.id == current_user.id }
  end

  def new
    # we need @user in our `simple_form_for`
    @handyman = Handyman.new
  end

  def create
    @handyman = Handyman.new(handyman_params)
    # we need `user_id` to associate handyman with corresponding user
    @user = current_user
    @handyman.user = @user
    if @handyman.save
      redirect_to my_profile_path
    else
      render :new
    end
  end

  private

  def handyman_params
    params.require(:handyman).permit(:description, :location)
  end
end

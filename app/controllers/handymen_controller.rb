class HandymenController < ApplicationController
  def new
    # we need @user in our `simple_form_for`
    @user = User.find(params[:user_id])
    @handyman = Handyman.new
  end

  def create
    @handyman = Handyman.new(handyman_params)
    # we need `user_id` to associate handyman with corresponding user
    @user = User.find(params[:user_id])
    @handyman.user = @user
    @handyman.save
    redirect_to root_path
  end

  private

  def handyman_params
    params.require(:handyman).permit(:description, :location)
  end
end

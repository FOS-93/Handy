class HandymenController < ApplicationController

  def index
    # Hacemos un reject para sacar al Handyman.id y liste solo los Handyman del resto
    @handyman = Handyman.where.not(id: current_user.id)
    # the `geocoded` scope filters only handymans with coordinates (latitude & longitude)
    @markers = @handyman.geocoded.map do |handyman|
      {
        lat: handyman.latitude,
        lng: handyman.longitude,
        info_window: render_to_string(partial: "info_window", locals: { handyman: handyman }),
        image_url: helpers.asset_url("wrench.png")
      }
    end
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

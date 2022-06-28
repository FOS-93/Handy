class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @handyman = Handyman.all.sample(6)
  end

  def my_profile
    @user = current_user
  end
end

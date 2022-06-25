class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @handyman = Handyman.all.reject { |handyman| handyman.id == current_user.id }
  end

  def my_profile
    @user = current_user
  end
end

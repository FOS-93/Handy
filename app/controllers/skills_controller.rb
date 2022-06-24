class SkillsController < ApplicationController
  def new
    @skill = Skill.new
    @handyman = Handyman.find(params[:handyman_id])
  end

  def create
    @skill = Skill.new(skill_params)
    @handyman = Handyman.find(params[:handyman_id])
    @skill.handyman = @handyman
    if @skill.save
      redirect_to my_profile_path
    else
      render new
    end
  end

  private

  def skill_params
    params.require(:skill).permit(:name, :level, :description)
  end
end

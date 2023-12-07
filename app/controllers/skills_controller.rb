class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def add_to_user
    skill = Skill.find(params[:id])
    current_user.skills << skill
    redirect_to skills_path, notice: "#{skill.name} added to your skills"
  end
end

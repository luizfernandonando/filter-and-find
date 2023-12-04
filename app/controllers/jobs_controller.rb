class JobsController < ApplicationController

  def index
    @companies = Company.all
    @user_skills = UserSkill.where(user: current_user)
    @job_skills = JobSkill.where(skill_id: @user_skills.pluck(:skill_id))
    @jobs = Job.where(id: @job_skills.pluck(:job_id))
  end


  def show
    @job = Job.find(params[:id])
    @company = @job.company
  end
end

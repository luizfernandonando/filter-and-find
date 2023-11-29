class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
    @company = @job.company
  end
end

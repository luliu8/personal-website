class ProjectsController < ApplicationController
  def index
    @projects=Project.all

  end



  def visual_recommender
    @project=Project.find(params[:project_id])
  end
end

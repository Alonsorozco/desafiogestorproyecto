class ProjectsController < ApplicationController
  def index
  end

  def dashboard
    if params[:status].present?
      @projects = Project.where("status = ?", params[:status])
    else
      @projects = Project.all
    end
  end

  def show
    @project = Project.create(name: params[:name], description: params[:description], stardate: params[:stardate], endate: params[:endate], status: params[:status])
  end
end

class ProjectsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: [:new ]
  def index
    @q = Project.ransack(params[:q])
    @projects = @q.result(distinct: true)
  end

  def new
    @project = Project.new
  end  

  def create
    @project = Project.new(project_params)
    
    if @project.save
      flash[:notice] = 'El proyecto se creó'
      redirect_to root_path  
    else
      flash[:notice] = 'El proyecto no se creó'
      redirect_to projects_new_path(@project)     
    end    
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :start_date, :end_date, :state)
  end
end

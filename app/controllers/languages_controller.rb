class LanguagesController < ApplicationController
  before_action :authenticate_user!
  #before_action :find_projects
 
  def show
    #@project = Project.find(params[:id])
    #@language = @project.languages.build
    #@project = Project.find(params[:project_id])
    @language = Language.find(params[:id])
  end
  
   
  def index
    @languages = Language.all
  end
  
  
  private

  def language_params
    params.require(:language).permit(:name)
  end
  
end
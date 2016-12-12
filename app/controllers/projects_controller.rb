class ProjectsController < ApplicationController
	
	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
		@project_id = params[:id]
	end

	def new
		@project = Project.new
        @project.tasks.build
	end

	def create
		@project = Project.new(project_params)
		@project.user = current_user
		@project.user_name = current_user.email
 
		@project.save
		redirect_to @project
	end

	private
		def project_params
			params.require(:project).permit(:title, :avatar)
		end
end

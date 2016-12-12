class TasksController < ApplicationController

	def index
		@tasks = Task.all
	end

	def show
		@task = Task.find(params[:id])
	end

	def new
	end

	def edit
		#@project = Project.find(params[:project_id])
		@task = Task.find(params[:id])
	end

	def create
		@project = Project.find(params[:project_id])
		@task = @project.tasks.create(task_params)
		#@task.user_name = current_user.email
		@task.save
		redirect_to project_path(@project)
		#@task = Task.new(task_params)
		#@task.project_title = @project.title
 
		#@task.save
		#redirect_to @task
	end

	def update
	  @task = Task.find(params[:id])
	 
	  if @task.update(task_params)
	    redirect_to @task
	  else
	    render 'edit'
	  end
	end

	private
		def task_params
			params.require(:task).permit(:title, :description, :user_name)
		end
end

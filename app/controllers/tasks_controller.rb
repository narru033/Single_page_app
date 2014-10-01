class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
	respond_to :html, :js
	
  def index
    @task = Task.first
  end

  def show
  end

  def new
  	@task = Task.new
  end

  def edit
  end	

  def create
    @task = Task.new(task_params)
	    if @task.save
	      #redirect_to @task
	      flash[:notice] = 'Task was successfully created.'
  		end
  end

  def update
		if @task.update(task_params)
			redirect_to @task
			flash[:notice] = 'Task was successfully updated.'
		end
  end

  def destroy
    @task.destroy
    @task1 = Task.first
    flash[:notice] = 'Task was successfully destroyed.'
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:subject, :description, :starttime, :owner)
    end
end

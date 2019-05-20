class TasksController < ApplicationController
  def show
    @task = Task.find(params[:id])
  end
  
  def index
    @task = Task.all
  end

  def new
    @task = Task.new
  end

  def create
     @task = Task.new(task_params) 
     @task.save 
     redirect_to @task 
  end  

  private  

  def task_params 
    params.require(:task).permit(:title, :body, :dua_date)
  end
end

class TasksController < ApplicationController
  def show
    @task = Task.find(params[:id])
  end
  
  def index
    @task = Task.all
  end
end

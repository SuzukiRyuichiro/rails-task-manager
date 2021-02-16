class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # raise
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render 'new'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def check
    @task = Task.find(params[:id])
    if @task.completed
      @task.completed = false
    else
      @task.completed = true
    end
    @task.save
    # raise
    redirect_to tasks_path
  end

  def edit

  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end

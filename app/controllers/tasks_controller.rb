class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)
    redirect_to tasks_path
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def task_params
    # Filtering/Whitelisting the params that come in from the form
    params.require(:task).permit(:name)
  end
end

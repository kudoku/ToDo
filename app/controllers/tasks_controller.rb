class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]


  def show
  end

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    # raise 'error'
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @task.update_attributes(task_params)
    redirect_to root_url
  end

  def destroy
    @task.destroy
    redirect_to root_url
  end





  private
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:title, :category, :priority, :is_completed)
    end
end






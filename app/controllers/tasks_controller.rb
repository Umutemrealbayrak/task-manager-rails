class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
  @tasks = current_user.tasks

  if params[:q].present?
    @tasks = @tasks.where("title LIKE ?", "%#{params[:q]}%")
  end

  @tasks = @tasks.order(priority: :desc, created_at: :desc)
end


  def show
  end

  def new
    @task = current_user.tasks.build
  end

  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      redirect_to tasks_path, notice: "Görev oluşturuldu."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path, alert: "Görev güncellendi."
    else
      render :edit
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path, flash: { danger: "Görev silindi." }
  end

  private

  def set_task
    @task = current_user.tasks.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :status, :priority)
  end
end

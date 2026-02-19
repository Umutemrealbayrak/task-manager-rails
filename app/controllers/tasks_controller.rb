class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = current_user.tasks.where(deleted_at: nil)

    if params[:search].present?
      @tasks = @tasks.where("title LIKE ?", "%#{params[:search]}%")
    end

    case params[:sort]
    when "priority_asc"
      @tasks = @tasks.reorder(priority: :asc)
    when "priority_desc"
      @tasks = @tasks.reorder(priority: :desc)
    else
      @tasks = @tasks.reorder(priority: :desc, created_at: :desc)
    end
  end

  def show
  end

  def new
    @task = current_user.tasks.build
  end

  def create
    @task = current_user.tasks.build(task_params)

    if @task.save
      redirect_to tasks_path,
                  notice: "Görev başarıyla oluşturuldu."
    else
      flash.now[:alert] = "Görev oluşturulamadı."
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to tasks_path,
            warning: "Görev güncellendi."
    else
      flash.now[:alert] = "Güncelleme başarısız."
      render :edit
    end
  end

  def destroy
    @task.soft_delete
    redirect_to  tasks_path,
          alert: "Görev çöp kutusuna taşındı."
  end

  # TRASH

  def trash
    @tasks = current_user.tasks.where.not(deleted_at: nil)
  end

  def restore
    task = current_user.tasks.unscoped.find(params[:id])
    task.restore

    redirect_to trash_path,
                notice: "Görev geri yüklendi."
  end

  def hard_delete
    task = current_user.tasks.unscoped.find(params[:id])
    task.destroy

    redirect_to trash_path,
                alert: "Görev kalıcı olarak silindi."
  end

  private

  def set_task
    @task = current_user.tasks.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :status, :priority)
  end
end

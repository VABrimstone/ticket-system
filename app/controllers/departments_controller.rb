class DepartmentsController < ApplicationController
  before_action :set_department, only: %i[edit update]
  before_action :authorize_user

  def index
    @departments = Department.ordered_alphabetically
  end

  def new
    @department = Department.new
  end

  def create
    if Department.create(department_params)
      redirect_to department_params, notice: 'Отдел создан'
    else
      render :new, notice: 'Не удалось создать отдел'
    end
  end

  def edit
  end

  def update
    if @department.update(department_params)
      redirect_to departments_path, notice: 'Данные об отделе обновлены'
    else
      render :edit, notice: 'Не удалось обновить данные'
    end
  end

  private

  def set_department
    @department = Department.find(params[:id])
  end

  def authorize_user
    department = @department || Department
    authorize department
  end

  def department_params
    params.require(:department).permit(:title, :status)
  end
end

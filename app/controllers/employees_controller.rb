class EmployeesController < ApplicationController
  helper_method :selected_employee

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    employee = Employee.create(employee_params)

    redirect_to employee_path
  end

  def edit; end

  def update
    selected_employee.update(employee_params)

    redirect_to employee
  end

  def selected_employee
    Employee.find(params[:id])
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
  end
end

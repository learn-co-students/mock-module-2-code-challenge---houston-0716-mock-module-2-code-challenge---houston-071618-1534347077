class EmployeesController < ApplicationController
  before_action :employee_params
  helper_method :selected_employee

  def show
    @employee = selected_employee
  end

  def create
    employee = Employee.create(employee_params)
    redirect_to employee
  end

  def index
    @employees = Employee.all
  end

  def edit
    @employee = selected_employee
  end

  def new
    @employee = Employee.new
  end

  def create
    employee = Employee.create(employee_params)

    redirect_to employee
  end

  def update
  end

  def selected_employee
    Employee.find(params[:id])
  end

  private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end


end

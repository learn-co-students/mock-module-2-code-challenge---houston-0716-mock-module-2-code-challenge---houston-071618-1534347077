class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee =  Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.create(employee_params)
    redirect_to employee_path(@employee)
  end

  def update
  end

private
  def employee_params
    params.require(:employee_params).permit(:first_name, :last_name, :alias, :title, :office)
  end

end

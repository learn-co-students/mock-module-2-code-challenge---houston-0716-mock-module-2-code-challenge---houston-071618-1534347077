class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = find_employee
  end

  def edit
  #  @employee = Employee.edit(params)
  end

  def delete
    @employee = find_employee
    @employee.destroy

    redirect_to employee_path
  end
  def destroy
    @employee = find_employee
    @employee.destroy

    redirect_to employee_path
  end

  private

  def find_employee
    Employee.find(params[:id])
  end

end

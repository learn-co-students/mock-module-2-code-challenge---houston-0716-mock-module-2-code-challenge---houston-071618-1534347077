class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  def index
    @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def edit
  end

  def create
    # byebug
    @employee = Employee.new(employee_params)
    @employee.save
    redirect_to employees_path
  end

  def update
    @employee.update(employee_params)
    redirect_to employees_url
  end

  def destroy
    @employee.destroy
    redirect_to employees_url
  end

  private

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
  end
end

class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(employee_params[:id])
  end

  def edit
    @employee = Employee.find(employee_params[:id])
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def update
    @employee = Employee.find(employee_params[:id])
    @dogs = Dog.all
    
    @employee.update(employee_params)
      
    redirect_to @employee
  end

  def create
    @employee = Employee.create(employee_params)
    
    redirect_to @employee
  end

  def destroy
    @employee = Employee.find(employee_params[:id])
    
    @employee.destroy
    
    redirect_to :index
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url)
  end
end

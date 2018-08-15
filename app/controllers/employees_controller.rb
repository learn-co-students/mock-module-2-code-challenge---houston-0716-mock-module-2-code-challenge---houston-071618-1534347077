class EmployeesController < ApplicationController
  before_action :current_employee, only:[:show, :edit]
 
  def index
    @employee = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new


  end

  def create
    @employee = Employee.new(employee_params)
      
      redirect_to employees_path

    end 

   
  

  def edit
  end

  def update
    employee = Employee.find(params[:id])
    employee.update(employee_params)

    redirect_to employee
  end 

  def destroy
    employee = Employee.find(params[:id])
    employee.destroy
    redirect_to employees_path 
  end 

  private 

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
  end

  def current_employee
    @employee = Employee.find(params[:id])
  end 

  def button_link(trext, url)
    button_to(text, urls, method:'get')
  end 
end


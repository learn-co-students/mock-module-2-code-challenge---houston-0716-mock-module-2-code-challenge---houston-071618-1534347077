class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = employee.find(params[:id])
  end

  def new
    Employee.new
  end

  def create
    employee = Employee.create(employee_params)

    redirect_to employee
  end


  def edit
  end

  def delete
  end

  private
   def employee_params
     params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
   end

end

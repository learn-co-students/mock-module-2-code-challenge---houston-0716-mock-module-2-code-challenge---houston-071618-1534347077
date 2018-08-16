class EmployeesController < ApplicationController
  before_action :set_employee

  def index
    @employees = Employee.all
  end

  def create
    employee = Employee.new(employee_params)
    if employee.valid?
      employee.save
      redirect_to employees_path
    else
      redirect_to new_employee_path
    end
  end

  def show
  end

  def edit
    @dog_options = Dog.all.map { |dog| [dog.name, dog.id] }
  end

  def new
    @dog_options = Dog.all.map { |dog| [dog.name, dog.id] }
  end

  def update
    @employee.update(employee_params)
    redirect_to employee_path(@employee)
  end

  private

  def set_employee
    if (params[:id] != nil)
      # unless(params[:id] == nil)
      @employee = Employee.find(params[:id])
    else
      @employee = Employee.new
    end
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
  end
end

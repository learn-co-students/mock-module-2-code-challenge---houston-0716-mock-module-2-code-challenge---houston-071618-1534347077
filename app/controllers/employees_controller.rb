class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  # def new
  #
  # end

  def new

    @employee = Employee.create(employee_params)
    byebug
    redirect_to employee_path(@employee)
  end

  def edit
  end

    private

    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
    end

end

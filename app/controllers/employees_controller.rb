class EmployeesController < ApplicationController
    before_action :current_employee, only: [:show, :edit, :update]

    def index
      @employees = Employee.all
    end

    def show

    end

    def new
      @employee = Employee.new
    end

    def create
      @employee = Employee.create(employee_params)

      redirect_to employee_path(@employee)
    end

    def edit

    end

    def update
      current_employee.update(employee_params)

      redirect_to employee_path(current_employee)
    end

    private
    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end

    def current_employee
      @employee = Employee.find(params[:id])
    end
  end

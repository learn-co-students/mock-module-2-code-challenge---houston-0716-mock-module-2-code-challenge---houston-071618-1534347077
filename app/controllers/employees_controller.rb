class EmployeesController < ApplicationController

	def index
		@employees = Employee.all
	end
	
	def create
		employee = Employee.create(employee_params)
		redirect_to employee
	end

	def edit 
	end 

	def show
		@employee = Employee.find(params[:id])
		@image_url = @employee.img_url 
	end 

	private 

	def employee_params
		params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
	end
	
end

class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
    @employees = Employee.all.select do |employee|
      @dog.id == employee.dog_id
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end


end

class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.find(params[:id])
    Dog.create(dog_params)

    redirect_to dog_path
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    Dog.update(dog_params)

    redirect_to dog_path
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :employee_id)
  end

end

class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def create
    dog = Dog.create(dog_params)
    redirect_to dogs_path
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)
    @dog.save
    redirect_to dog_path(@dog)
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end
end

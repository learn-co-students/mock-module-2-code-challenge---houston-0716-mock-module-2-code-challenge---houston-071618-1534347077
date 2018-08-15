class DogsController < ApplicationController
  helper_method :selected_dog

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])

    
  end

  def new
    @dog = Dog.new
  end

  def create
    dog = Dog.create(dog_params)

    redirect_to dog_path
  end

  def edit

  end

  def update
    selected_dog.update(dog_params)

    redirect_to dog_path(selected_dog)
  end

  def selected_dog
    Dog.find(params[:id])
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end
end
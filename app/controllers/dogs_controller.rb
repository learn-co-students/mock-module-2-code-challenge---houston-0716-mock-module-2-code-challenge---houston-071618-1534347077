class DogsController < ApplicationController
  before_action :dog_params
  helper_method :selected_dog
  def show
    @dog = selected_dog
  end

  def create
    dog = Dog.create(dog_params)
    redirect_to dog
  end

  def index
    @dogs = Dog.all
  end

  def edit
    @dog = selected_dog
  end

  def new
    @dog = Dog.new
  end

  def create
    dog = Dog.create(dog_params)

    redirect_to dog
  end

  def update
  end

  def selected_dog
    Dog.find(params[:id])
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end


end

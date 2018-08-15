class DogsController < ApplicationController

  before_action :set_dog, only: [:show, :edit, :update, :destroy]

  def index
    @dogs = Dog.all
  end

  def show
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog.create(params_dog)
    redirect_to dog_path(@dog)
  end

  def edit
  end

  def update
    @dog.update(params_dog)
    redirect_to dog_path(@dog)
  end

  def destroy
    @dog.destroy
    redirect_to dogs_path
  end

  private

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def params_dog
    params.require(:dog).permit(:name, :breed, :age)
  end

end

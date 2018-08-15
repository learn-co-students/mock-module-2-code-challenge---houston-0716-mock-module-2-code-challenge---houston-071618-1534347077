class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def show
    @dog = find_dog
  end

  def new

  end

  def edit
    @dog = find_dog
  end

  def patch
    byebug

  end

  def destroy
    @dog = find_dog
    @dog.destroy

    redirect_to dog_path
  end


  private

  def find_dog
    Dog.find(params[:id])
  end


end

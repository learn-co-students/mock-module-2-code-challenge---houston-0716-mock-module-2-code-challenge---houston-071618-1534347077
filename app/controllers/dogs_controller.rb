class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])

    @dog.update(dog_params)

    redirect_to @dog
  end



  private

  def dog_params
    params.require(:dog).permit(:name, :age, :breed)
  end

end

class DogsController < ApplicationController
  before_action :current_dog, only:[:show, :edit]
 
  def index
    @dog = Dog.all
  end

  def show
  end

  def new
    @dog = Dog.new


  end

  def create
    @dog = Dog.new(dog_params)
      
      redirect_to dogs_path

    end 

   
  

  def edit
  end

  def update
    dog = Dog.find(params[:id])
    dog.update(dog_params)

    redirect_to dog
  end 

  def destroy
    dog = Dog.find(params[:id])
    dog.destroy
    redirect_to dogs_path 
  end 

  private 

  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end

  def current_dog
    @dog = Dog.find(params[:id])
  end 

  def button_link(trext, url)
    button_to(text, urls, method:'get')
  end 
end




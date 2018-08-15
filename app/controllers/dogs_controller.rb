class DogsController < ApplicationController


def index
  @dogs = Dog.all.by_name
end

def show
  @dog = Dog.find(params[:id])
end

def new
  Dog.new
end

def create
  dog = Dog.create(dog_params)

  redirect_to dog
end

def edit
end

def delete
end

private
def dog_params
  params.require(:dog).permit(:name, :breed, :age)
end

end

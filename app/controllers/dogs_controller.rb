class DogsController < ApplicationController
  
  def index
    @dog = Dog.all
  end
  
end

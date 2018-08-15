class Employee < ApplicationRecord
  belongs_to :dog

  def dog_name=(name)
    self.dog = Dog.find_by(name: name)
  end

  def dog_name
      self.dog ? self.dog.name : nil
  end

end

class Employee < ApplicationRecord
  belongs_to :dog
  validates :alias, uniqueness: true
  validates :title, uniqueness: true

  def name
    "#{self.first_name} #{self.last_name}"
  end
end

# how rails knows to associate the employee object with the dog instance variable. Dog is an instance of a dog, meaning its behavior is described by the dog model. We told active model when we created the dog model that it has many employees so active record creates a getter for us on the model. What this is going to do is:

#   def employees
#     self.sqlite3.get.exec('SELECT * FROM employees WHERE dog_id = #{self.id}')
#   end

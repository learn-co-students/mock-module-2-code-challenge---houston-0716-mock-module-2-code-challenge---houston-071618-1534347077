class Employee < ApplicationRecord
  belongs_to :dog

  def full_name
    [employee.first_name, employee.last_name].join(" ")
  end
end

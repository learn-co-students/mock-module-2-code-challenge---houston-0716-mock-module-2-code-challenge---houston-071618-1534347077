class Employee < ApplicationRecord
    belongs_to :dog
    validates :first_name, uniqueness: true
    validates :last_name, uniqueness: true
    # validate :custom

    # def custom
      # if first_name last_name AND title do not exist
      # validate
    # else
    # error
    # end

    def employee_name
      # didn't work :((((
      "#{employee.first_name} + #{employee.last_name}"
    end

end

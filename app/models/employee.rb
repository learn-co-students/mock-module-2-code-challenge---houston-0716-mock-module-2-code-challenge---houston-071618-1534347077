class Employee < ApplicationRecord
  belongs_to :dog
  validates :title, uniqueness: true

  def to_s
    "#{first_name} #{last_name}"
  end
end

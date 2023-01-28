class ClassSection < ApplicationRecord
  has_one :user
  has_many :students
  has_many :attendances
end

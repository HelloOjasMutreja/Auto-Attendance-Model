class Student < ApplicationRecord
    has_many :attendances
    validates :admission_number, presence: true, uniqueness: true
    validates :name, presence: true
    validates :mobile_number, presence: true, numericality: true
  end  
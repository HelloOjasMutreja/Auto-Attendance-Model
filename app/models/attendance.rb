class Attendance < ApplicationRecord
  belongs_to :student
  belongs_to :class_section
  validates :student_id, presence: true
  validates :date, presence: true
  validates :status, presence: true
end
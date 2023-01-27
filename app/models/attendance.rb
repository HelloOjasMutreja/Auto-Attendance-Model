class Attendance < ApplicationRecord
  belongs_to :student
  validates :student_id, presence: true
  validates :date, presence: true
  validates :status, presence: true
end
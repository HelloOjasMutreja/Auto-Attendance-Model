class User < ApplicationRecord
  belongs_to :class_section
  validates :first_name, presence: true, length: { minimum: 2 }

  enum role: [:admin, :teacher]

  def admin?
    role == 'admin'
  end
  
  def teacher?
    role == 'teacher'
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

class Teacher < ApplicationRecord

  has_many :students
  has_many :subject_teachers
  has_many :subjects, through: :subject_teachers

end

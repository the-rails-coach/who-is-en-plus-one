class Student < ApplicationRecord

  belongs_to :teacher
  belongs_to :grade


  has_many :report_cards
end

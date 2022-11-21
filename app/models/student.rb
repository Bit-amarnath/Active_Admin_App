class Student < ApplicationRecord
    belongs_to :school
    validates :name, presence: true

    # scope "Enrollment_number", :student_number
end

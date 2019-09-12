class StudentCourse < ApplicationRecord
    belongs_to :student
    belongs_to :course

    validates :grade, numericality: {greater_than_or_equal_to: 0}
end
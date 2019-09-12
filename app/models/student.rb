class Student < ApplicationRecord
    validates :name, presence: true

    has_many :student_courses
    has_many :courses, through: :student_courses

    def find_grade(course_id)
        student_courses.find_by(student_id: self.id, course_id: course_id)
        .grade
    end
end
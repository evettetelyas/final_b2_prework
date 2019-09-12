class Course < ApplicationRecord
    validates :name, presence: true

    has_many :student_courses
    has_many :students, through: :student_courses

    def find_student_grade(student_id)
        student_courses.find_by(student_id: student_id, course_id: self.id)
        .grade
    end

    def sort_students_by_grade
        students.where("student_courses.course_id = #{self.id}")
        .order("student_courses.grade desc")
    end

    # USEFUL SQL

#student name, grade, course table ordered highest to lowest grade
# select students.name,  grade, courses.name as course from students inner join student_courses on student_courses.student_id = students.id inner join courses on student_courses.course_id = courses.id order by grade desc;
end
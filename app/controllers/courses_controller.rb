class CoursesController < ApplicationController

    def show
        @course = Course.find(params[:id])
        @sorted_students = @course.sort_students_by_grade
        @student = Student.new
    end
end
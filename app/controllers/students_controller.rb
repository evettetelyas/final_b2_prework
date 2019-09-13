class StudentsController < ApplicationController

    def show
        @student = Student.find(params[:id])
        @courses = @student.courses
    end

    def create
        @course = Course.find(params[:course_id])
        @student = @course.students.create(student_params)
        redirect_to course_path(@course)
    end

    private

    def student_params
        params.require(:student).permit(:name)
    end

end
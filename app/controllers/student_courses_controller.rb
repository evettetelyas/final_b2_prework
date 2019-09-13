class StudentCoursesController < ApplicationController

    def update
        sc = StudentCourse.find(params[:id])
        sc.update(sc_params)
        sc.save
        redirect_to course_path(sc.course_id)
    end


    private

    def sc_params
        params.require(:student_course).permit(:grade)
    end
end
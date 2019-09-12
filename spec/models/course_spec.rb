require 'rails_helper'

RSpec.describe Course, type: :model do
    describe "relationships" do
        it { should have_many :student_courses }
        it { should have_many(:students).through(:student_courses) }
    end

    describe "validations" do
        it { should validate_presence_of :name }
    end

    describe "model methods" do
        before :each do
            @pugs_101 = Course.create(name: "Pugs 101")
            @larry = Student.create(name: "Larry")
            @evette = Student.create(name: "Evette")
            StudentCourse.create(student: @larry, course: @pugs_101, grade: 100)
            StudentCourse.create(student: @evette, course: @pugs_101, grade: 99.98)
        end

        it "should sort students by grade" do
            expect(@pugs_101.sort_students_by_grade).to eq([@larry, @evette])
        end
    end
end
require 'rails_helper'

RSpec.describe Student, type: :model do
    describe "relationships" do
        it { should have_many :student_courses }
        it { should have_many(:courses).through(:student_courses) }
    end

    describe "valiations" do
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

        it "should find grade for a course" do
            expect(@evette.find_grade(@pugs_101)).to eq(99.98)
        end
    end
end
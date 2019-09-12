RSpec.describe "course show page" do
    before :each do
        @pugs_101 = Course.create(name: "Pugs 101")
        @larry = Student.create(name: "Larry")
        @evette = Student.create(name: "Evette")
        StudentCourse.create(student: @larry, course: @pugs_101, grade: 100)
        StudentCourse.create(student: @evette, course: @pugs_101, grade: 99.98)        
    end

    it "should show course info" do
        visit "/courses/#{@pugs_101.id}"

        expect(page).to have_content(@pugs_101.name)
        expect(page).to have_content(@evette.name)
        expect(page).to have_content(@larry.name)
        expect(page).to have_content(@larry.find_grade(@pugs_101))
        expect(page).to have_content(@evette.find_grade(@pugs_101))
    end
end
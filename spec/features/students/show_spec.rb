RSpec.describe "student show page" do
    before :each do
        @pugs_101 = Course.create(name: "Pugs 101")
        @pug_history = Course.create(name: "Pug History")
        @evette = Student.create(name: "Evette")
        StudentCourse.create(student: @evette, course: @pugs_101, grade: 100)
        StudentCourse.create(student: @evette, course: @pug_history, grade: 99.98)        
    end

    it "should show student and course info" do
        visit "/students/#{@evette.id}"

        expect(page).to have_content(@pugs_101.name)
        expect(page).to have_content(@evette.name)
        expect(page).to have_content(@pug_history.name)
        expect(page).to have_content(@evette.find_grade(@pugs_101))
        expect(page).to have_content(@evette.find_grade(@pug_history))
    end
end
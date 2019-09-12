# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#courses
pugs_101 = Course.create(name: "Pugs 101")
pug_history = Course.create(name: "Pug History")
algebra = Course.create(name: "Puggy Algebra")

#students
larry = Student.create(name: "Larry")
evette = Student.create(name: "Evette")
emily = Student.create(name: "Emily")
arlo = Student.create(name: "Arlo")
jason = Student.create(name: "Jason")
marbles = Student.create(name: "Marbles")

#student_courses
StudentCourse.create(student: larry, course: pugs_101, grade: 100)
StudentCourse.create(student: arlo, course: pugs_101, grade: 50.62)
StudentCourse.create(student: evette, course: pugs_101, grade: 99.98)
StudentCourse.create(student: marbles, course: pugs_101)
StudentCourse.create(student: emily, course: pugs_101, grade: 79.232)
StudentCourse.create(student: jason, course: pugs_101, grade: 98.45)
StudentCourse.create(student: larry, course: pug_history, grade: 100)
StudentCourse.create(student: jason, course: pug_history)
StudentCourse.create(student: marbles, course: pug_history)
StudentCourse.create(student: evette, course: algebra)
StudentCourse.create(student: emily, course: algebra, grade: 12.65)
StudentCourse.create(student: jason, course: algebra, grade: 89)

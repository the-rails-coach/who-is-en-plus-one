# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


teacher1 = Teacher.create(name: Faker::Name.name)
teacher2 = Teacher.create(name: Faker::Name.name)
teacher3 = Teacher.create(name: Faker::Name.name)
teacher4 = Teacher.create(name: Faker::Name.name)


%w{A B C D}.each do |grade|
  Grade.create(name: grade)
end

[teacher1, teacher2, teacher3, teacher4].each do |teacher|
  rand(5)+4.times do
    GoodStudent.create(teacher: teacher,
                       name: Faker::Name.name)
  end

  rand(4)+3.times do
    BadStudent.create(teacher: teacher,
                      name: Faker::Name.name)

  end
end

all_studnts_count = Student.all.count


100.times do
  ReportCard.create(student: Student.find(rand(all_studnts_count)+1),
                    grade: Grade.find(rand(4)+1))

end


25.times do
  Subject.create(name: Faker::Educator.subject)
end

7.times do
  teacher1.subjects << Subject.find(rand(Subject.all.count)+1)
  teacher2.subjects << Subject.find(rand(Subject.all.count)+1)
  teacher3.subjects << Subject.find(rand(Subject.all.count)+1)
  teacher4.subjects << Subject.find(rand(Subject.all.count)+1)
end



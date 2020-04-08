namespace :nplus1 do
  desc "lets test some n+1s"

  task make_data: :environment do
    teacher1 = Teacher.create(name: Faker::Name.name)
    teacher2 = Teacher.create(name: Faker::Name.name)
    teacher3 = Teacher.create(name: Faker::Name.name)
    teacher4 = Teacher.create(name: Faker::Name.name)


    [1,2,3,4,5,7,8,9,10,11,12].each do |grade|
      Grade.create(name: grade)
    end

    [teacher1, teacher2, teacher3, teacher4].each do |teacher|
      rand(5)+4.times do
        GoodStudent.create(teacher: teacher,
                           name: Faker::Name.name,
                           grade: Grade.find(rand(Grade.all.count)+1))
      end

      rand(4)+3.times do
        BadStudent.create(teacher: teacher,
                          name: Faker::Name.name,
                          grade: Grade.find(rand(Grade.all.count)+1))

      end
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
  end
end

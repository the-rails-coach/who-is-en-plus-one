namespace :nplus1 do
  desc "lets test some n+1s"

  task make_data: :environment do
    teacher = Teacher.create(name: Faker::Name.name)


    13.times do
      GoodStudent.create(teacher: teacher, name: Faker::Name.name)
    end

    12.times do
      BadStudent.create(teacher: teacher, name: Faker::Name.name)
    end


    10.times do
      Subject.create(name: Faker::Educator.subject)
    end

    3.times do
      teacher.subjects << Subject.find(rand(Subject.all.count))
    end
  end
end

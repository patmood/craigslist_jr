require 'faker'

10.times do
  Category.create({:title => Faker::Company.bs})
end

50.times do
  Post.create({:category_id => rand(1..10),:title => Faker::Company.bs ,:description => Faker::Lorem.paragraph, :name => Faker::Name.first_name, :email => Faker::Internet.email })
end


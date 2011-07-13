Factory.define :admin, :class => :user do |user|
  user.email 'admin@mailinator.com'
  user.password 'please'
  user.password_confirmation 'please'
  #user.role 'admin'
end

Factory.define :user do |user|
  user.email {Faker::Internet.email}
  user.password 'please'
  user.password_confirmation 'please'
end

Factory.define :project do |project|
  project.title "Falcon task manager"
  project.description "How meta :)"
end

Factory.define :issue do |f|
  f.title {Faker::Lorem.sentence}
  f.description {Faker::Lorem.paragraph}
end

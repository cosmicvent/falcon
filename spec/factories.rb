saved_single_instances = {}
#Find or create the model instance
single_instances = lambda do |factory_key|
  begin
    saved_single_instances[factory_key].reload
  rescue NoMethodError, Mongoid::RecordNotFound  
    #was never created (is nil) or was cleared from db
    saved_single_instances[factory_key] = Factory.create(factory_key)  #recreate
  end

  return saved_single_instances[factory_key]
end

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

Factory.define :project do |f|
  f.title "Falcon task manager"
  f.description "How meta :)"

  f.after_create do |p|
    25.times{ p.issues << Factory.build(:issue) }
  end
end

Factory.define :issue do |f|
  f.title {Faker::Lorem.sentence}
  f.description {Faker::Lorem.paragraph}
end

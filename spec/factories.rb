Factory.define :admin, :class => :user do |user|
  user.email 'admin@mailinator.com'
  user.password 'please'
  user.password_confirmation 'please'
  #user.role 'admin'
end

Factory.define :user do |user|
  user.email 'user@mailinator.com'
  user.password 'please'
  user.password_confirmation 'please'
end

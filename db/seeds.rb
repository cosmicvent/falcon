#empty all collections#
[User].each &:destroy_all

#users#
admin = User.create! :email => 'admin@mailinator.com', :password => 'please', :password_confirmation => 'please'
admin.confirm!
user = User.create! :email => 'user@mailinator.com', :password => 'please', :password_confirmation => 'please'
user.confirm!

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#create Jonathan's Account
User.destroy_all
user = User.find_by(email: 'jonmakesart@gmail.com')
if user.nil?
  admin = User.new 
  admin.email = 'jonmakesart@gmail.com'
  admin.password = 'firstglassleather'
  admin.password_confirmation = 'firstglassleather'
  admin.save
end

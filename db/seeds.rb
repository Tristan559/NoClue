# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# add '!' at end of User.create to throw exception if any params are not valid
User.create!(name: 'Randy', email: 'rcasey559@gmail.com', password: 'passwordd', password_confirmation: 'passwordd')


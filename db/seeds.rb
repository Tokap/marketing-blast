# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = Admin.create!(email: "AllenPatrick86@gmail.com", 
                      password: "password1204", 
                      admin_key: true)

customer = Customer.create!(email: "AllenPatrick86@gmail.com", 
                            phone: "6318382261", 
                            first_name: "Patrick", 
                            last_name: "Allen")
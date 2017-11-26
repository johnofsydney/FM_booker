# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booker.destroy_all
booker1 = Booker.create :name => "Peter", :email => "peter@ga.co", :password => 'chicken'
booker2 = Booker.create :name => "Jane", :email => "jane@ga.co", :password => 'chicken'

Technician.destroy_all
tech1 = Technician.create :name => "Stephen", :email => "stephen@ga.co", :password => 'chicken'
tech2 = Technician.create :name => "Gillian", :email => "gillian@ga.co", :password => 'chicken'

Job.destroy_all
job1 = Job.create :summary => "Fix Leaking Tap", :address => "1 Macquarie Street, Sydney NSW 2000"
job2 = Job.create :summary => "Mow overgrown lawn", :address => "1 George Street, Sydney NSW 2000"

booker1.jobs << job1
tech1.jobs << job1

booker2.jobs << job2
tech2.jobs << job2

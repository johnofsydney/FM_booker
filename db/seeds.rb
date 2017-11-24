# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booker.destroy_all
booker1 = Booker.create :name => "Peter"
booker2 = Booker.create :name => "Jane"

Technician.destroy_all
tech1 = Technician.create :name => "Stephen"
tech2 = Technician.create :name => "Gillian"

Job.destroy_all
job1 = Job.create :summary => "Fix Leaking Tap"
job2 = Job.create :summary => "Mow overgrown lawn"

booker1.jobs << job1
tech1.jobs << job1

booker1.jobs << job1
booker2.jobs << job2

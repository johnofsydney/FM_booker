# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booker.destroy_all
booker1 = Booker.create :name => "Mr Incredible", :email => "bob@ga.co", :password => 'chicken'
booker2 = Booker.create :name => "Elastigirl", :email => "helen@ga.co", :password => 'chicken'
booker3 = Booker.create :name => "Allan Border", :email => "allan@ga.co", :password => 'chicken'

Technician.destroy_all
technician1 = Technician.create :name => "Finn", :email => "finn@ga.co", :password => 'chicken'
technician2 = Technician.create :name => "Jake", :email => "jake@ga.co", :password => 'chicken'
technician3 = Technician.create :name => "Shane Warne", :email => "shane@ga.co", :password => 'chicken'

Job.destroy_all
job1 = Job.create :summary => "Fix Leaking Tap", :detail => "Fix the tap. Plumbing. Pipes. Cras sollicitudin lorem quis lorem semper, nec gravida neque fermentum. Curabitur dignissim quam libero, nec.", :address => "1 Macquarie Street, Sydney NSW 2000", :requested_date =>"2017/12/25"
job2 = Job.create :summary => "Mow overgrown lawn", :detail => "Mow the lawn. Lawnmower. Grass. Cras sollicitudin lorem quis lorem semper, nec gravida neque fermentum. Curabitur dignissim quam libero, nec.",  :address => "1 George Street, Sydney NSW 2000", :requested_date =>"2017/12/25"
job3 = Job.create :summary => "Change the light bulb", :detail => "Light switch electricity. Cras sollicitudin lorem quis lorem semper, nec gravida neque fermentum. Curabitur dignissim quam libero, nec.",  :address => "1 Pitt Street, Sydney NSW 2000", :requested_date =>"2017/12/25"
job4 = Job.create :summary => "Dust the cobwebs", :detail => "Dust my broom. Cras sollicitudin lorem quis lorem semper, nec gravida neque fermentum. Curabitur dignissim quam libero, nec.",  :address => "1 York Street, Sydney NSW 2000", :requested_date =>"2017/12/25"
job5 = Job.create :summary => "Clean your room", :detail => "Teenagers. Messy room. Old Sanwich Cras sollicitudin lorem quis lorem semper, nec gravida neque fermentum. Curabitur dignissim quam libero, nec.",  :address => "1 Market Street, Sydney NSW 2000", :requested_date =>"2017/12/25"

Company.destroy_all
company1 = Company.create :name => "Bobs Burgers"
company3 = Company.create :name => "Cricketers"

Approval.destroy_all
approval1 = Approval.create :approved => true
approval2 = Approval.create :approved => true
approval3 = Approval.create :approved => true

company1.bookers << booker1 << booker2
company1.approvals << approval1
company1.approvals << approval2

company3.bookers << booker3
company3.approvals << approval3

technician1.approvals << approval1
technician2.approvals << approval2
technician3.approvals << approval3

booker1.jobs << job1 << job2 << job3
technician1.jobs << job1

booker3.jobs << job4 << job5
technician3.jobs << job4

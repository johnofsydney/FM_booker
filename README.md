# README


## Summary
* This app is called FM_Booker. Which is a dull name for an unexciting app.
* The target audience for the app is Facilities Maintenance companies, and similar.
* The company has many bookers, who will create a job based on whatever the customer's requirements are.
* The company has many technicians, that will accept a job and go and do the work. From the database POV, they willn edit a job, but they cannot create a new one.
* The booker's main page is the list of jobs.
* The technician's main page is the list of their jobs.


## Acknowledgments
* Justin helped me with Heroku
* Josh helped me with Cloudinary
* Maddi helped me with pgSearch.


## Structure
* Job. The central table is Job. Jobs are created by bookers and edited by bookers and technicians. Each Job belongs to a booker and a technician. Technicians are optional, so that a Job can be created without a technician.
* Booker. Is a user table with password etc. Booker's have to login to the app. Each booker can have many jobs.
* Technician. Is a seperate user table. No crossover to the Booker table. Technicians have to login to the app. Each technician can have many jobs.


## gems and APIs
* gem 'cloudinary'
* gem 'pg_search'
* API : cloudinary
* API : googleMaps


## Good stuff / challenges overcome
* Having two seperate user types and having them being able to login. Nice.
* Having seperate views and actions according to who is logged in.
* Trapping some errors and redirecting to an error page with a flash message.
* Trapping & preventing (some) navigation for user trying to view another users page.
* Bootstrap made this the first presentable looking thing I've ever made.

## Things I learnt and would do differently
* Not put too many CSS things in each class. Rather have more granular classes and then just add whichever ones you need to whatver element you're styling.


## Shortcomings / challenges not overcome
* The two tables for two types of users is important for lots of real world applications, but it did mean I didn't really consider a Tunr style new user sign up. And I never really circled back to solve this part of the project.
* A booker can only be created by me in the console. Currently there is no way for a booker to edit their details.
* A technician can be created by a booker. Currently there is no way for anyone to edit a technician details.
* There is no way (outside the console) for bookers or technicians to be deleted. This is probably not a bad thing for a real world app of this kind. Probably better to obsolete them via some kind of boolean field than to delete the record entirely.
* Google Map API is hardcoded (from before we discussed secrets).


## Where Next?
* I think this is a saleable idea. I think real estate agents, fire services companies, etc could all use something like this.
* I would start from scratch, and spend most of my thinking time getting the users models right.
* I would add the following;
.. * support for multiple photos (many to many with Jobs)
.. * spare parts (many to many with jobs)
.. * auto generate invoice for client

# README

This is a simple trivia website made using ruby on rails.

The project began by first standing up a basic rails application.
The next step was to connect a testing suite, rspec.
From there, I created a welcome page which uses sass for styling. I left on some buttons for where the application would go, but first I needed to be able to create questions.
In order to do that, I needed a database. The requirements preferred a NOSQL solution, so I traded out active record for mongodb.
I used the rails scaffold generator to make a trivium model and related controllers, views, and routes.
A simple form lets the user create a piece of trivia and persist it to the database.
In order to reach that functionality, a user needs to log in. So, I used devise for authentication purposes.
Once I had tried out the login and made sure a user could do that, I added some functionality based around the login on the main page.
In order to strive more toward functional completeness, I decided to add the scoring mechanism.

A couple of notes regarding the completeness of the project:
Currently, trivia answer matching is unimplemented, so the scoring functionality is incomplete. Additionally, greater care should be taken to lock down the site to only those who have logged in. Without that, bots could potentially overrun the databases with nonsense. Time willing, these are the most important TODOs of the project.

Additionally, using OmniAuth for a facebook login would be more user-friendly. Also, styling is still inconsistent.

* versions
- ruby 2.4.1p111

* System dependencies
- Hardware
  - This was built on a Mac OSX Sierra 10.12.4 system.
- Software
  - rails 5.1.0
  - devise 4.3.0
  - sass-rails 5.0
  - bootstrap-sass 3.3
  - mongoid 6.1.0
  - mongodb 3.4.4
  - haml-rails 1.0.0
  - fontawesome 3.2.1 (unused at the moment, but there are plans for it)
  - rspec 3.6.0

* Database creation
  - uses mongodb instead of active record and sqlite3
* How to run the test suite
  bundle exec rake spec

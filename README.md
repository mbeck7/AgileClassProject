README
========

Agile Class Project is a project for agile class.

We worked very hard to come up with a good name.

Getting a fresh repo up and running:
-----------------------------------------------

Clone the repo and get in the directory:

$ git clone https://github.com/mbeck7/AgileClassProject.git

$ cd AgileClassProject

Because ruby gems:

$ bundle update

$ bundle install

Set up the project and runn the server:

$ rake db:migrate

$ rake db:seed --trace

$ bin/rake test test/models/job_test.rb

$ bin/rake test test/models/company_test.rb

$ rails s

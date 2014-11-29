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

Get rid of solr stuff the git ignore couldn't handle:

$ rm -rf config/sunspot.yml

$ rm -rf config/solr

Set up solr:

rails g sunspot_rails:install

bundle exec rake sunspot:solr:start

Set up the project and run the server:

$ rake db:migrate

$ rake db:seed --trace

$ rails s

Getting a broken copy up and running if solr is running:
-----------------------------------------------------------------------

Get the DB to square one:

$ rake db:migrate VERSION=0

Because ruby gems:

$ bundle update

$ bundle install

Stop solr:

$ bundle exec rake sunspot:solr:stop

Get rid of solr stuff the git ignore couldn't handle:

$ rm -rf config/sunspot.yml

$ rm -rf config/solr

Set up solr:

$ rails g sunspot_rails:install

$ bundle exec rake sunspot:solr:start

Set up the project and run the server:

$ rake db:migrate

$ rake db:seed --trace

$ rails s

Other Helpful Commands
---------------------------------

Check to see if solr is running:

$ ps aux | grep solr

Kill solr if it still is running:

$ sudo kill (ID)

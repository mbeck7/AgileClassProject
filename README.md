README
========

Agile Class Project is a project for agile class.

We worked very hard to come up with a good name.

Getting up and running in the terminal:
-------------------------------------------------

git clone https://github.com/mbeck7/AgileClassProject.git

cd AgileClassProject/

bundle exec rake sunspot:solr:start

rake db:setup

rails s

------------------------------------------------

Sunspot is very touchy and the way to get it started
is to follow these steps...

git clone https://github.com/mbeck7/AgileClassProject.git

cd AgileClassProject/

Make sure solr has stopped...
bundle exec rake sunspot:solr:stop 
To check to see if has stopped use...
ps aux | grep solr
If it still is running use the kill command...
sudo kill (ID)

nuke the solr file in the root 
from root go to config and delete sunspot.yml

rails g sunspot_rails:install

bundle exec rake sunspot:solr:start

rake db:migrate

rails s





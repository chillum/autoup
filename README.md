## autoup [![Gem Version](https://badge.fury.io/rb/autoup.svg)](http://badge.fury.io/rb/autoup)
* Ruby + Selenium robot
* Logs in onto [vBulletin](http://www.vbulletin.com) forum boards
* Finds all user's threads
* Updates (bumps) all the posts
* Prints to stdout the UP/SKIP status for every thread

### Installation
* Install [Ruby](https://www.ruby-lang.org/en/documentation/installation/) and [PhantomJS](http://phantomjs.org/)
* Run `gem install autoup`
* Write a [configuration file](examples/autoup.yml) to `~/.config/autoup.yml`
* Run `autoup` and check if everything's working

### TODO
* Test on newer vB (currently tested on 3.8.7 only)

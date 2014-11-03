## autoup script
* Ruby + Selenium robot
* Logs in onto [vBulletin](http://www.vbulletin.com) forum boards
* Finds all user's threads
* Updates (bumps) all the posts
* Prints to stdout the UP/SKIP status for every thread

### Installation
* Install [Firefox](http://www.mozilla.org/ru/firefox/new/) and
  [Ruby](https://www.ruby-lang.org/en/installation/) (Windows users should install DevKit as well)
* Run `gem install autoup`
* Write a configuration file
* Run `autoup` and check if everything's working

### Configuration
* `~/.config/autoup.yml`
* See [example](examples/autoup.yml) for details

### TODO
* Test on newer vB (currently tested on 3.8.7 only)

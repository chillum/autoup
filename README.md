## autoup script
* Ruby+Selenium robot
* Logs in onto [vBulletin](http://www.vbulletin.com) forum boards
* Finds all user's threads
* Updates (bumps) all the posts
* Prints to stdout the UP/SKIP status for every thread

### Installation
* Install [Firefox](http://www.mozilla.org/ru/firefox/new/) and
  [Ruby](https://www.ruby-lang.org/en/installation/)
* Install [bundler](http://bundler.io): `gem install bundler`
* Clone this repo and run `bundle install`
* Write a configuration file
* Launch and check if everything's working

### Configuration
* `~/.config/autoup.yml`
* See [example](autoup.yml) for details

### TODO
* Catch failed logins
* Catch other errors, that apply to normal usage
* Test on newer vB (currently tested on 3.8.7 only)
* Provide a configuration option to update specific posts only
* Hide the Firefox window, if it's possible
* Make a Gem of it

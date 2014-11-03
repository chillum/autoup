#! /usr/bin/env ruby
#
# Ruby + Selenium robot to automate updating vBulletin posts
#
# Copyright 2014 Vasily Korytov
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'selenium-webdriver'
require 'yaml'

config = YAML.load_file File.expand_path('~/.config/autoup.yml')
config.each do |cfg|
  web = Selenium::WebDriver.for :firefox
  begin
    web.manage.timeouts.implicit_wait = cfg['timeout'] || 5
    web.get cfg['forum']

    web.find_element(:name, 'vb_login_username').send_keys(cfg['user'])
    login = web.find_element(:name, 'vb_login_password')
    login.send_keys cfg['pass']
    login.submit

    begin
      web.find_element(:link, cfg['user']).click
    rescue Selenium::WebDriver::Error::NoSuchElementError
      puts "ERROR: unable to login on #{cfg['forum']} as #{cfg['user']}"
      next
    end

    web.find_element(:link, cfg['stats']).click
    web.find_element(:link, "#{cfg['find']} #{cfg['user']}").click

    links = []
    web.find_elements(:css, 'a[id ^= "thread_title_"]').each do |link|
      links.push link.attribute('href')
    end

    links.each do |link|
      web.get link
      begin
        web.find_element(:css, "input[value = '#{cfg['up']}']").click
        puts "UP: #{link}"
      rescue Selenium::WebDriver::Error::NoSuchElementError
        puts "SKIP: #{link}"
      end
    end
  ensure
    web.quit
  end
end

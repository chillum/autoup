require_relative 'version.rb'

Gem::Specification.new do |s|
  s.name         = 'autoup'
  s.version      = AutoUp::Version
  s.summary      = 'Selenium robot for auto-bumping vBulletin posts'
  s.description  = "Logs in onto vBulletin forum boards, finds all user's threads and bumps all the posts"
  s.homepage     = 'https://github.com/chillum/autoup'
  s.license      = 'Apache-2.0'
  s.author       = 'Vasily Korytov'
  s.email        = 'vasily.korytov@icloud.com'
  s.files        = %w(NOTICE README.md examples/autoup.yml lib/autoup.rb)
  s.executables  << 'autoup'
  s.add_dependency 'selenium-webdriver',  '= 3.5.2'
  s.required_ruby_version              = '>= 1.9.2'
end

Gem::Specification.new do |s|
  s.name         = 'autoup'
  s.version      = '0.9.3'
  s.summary      = 'Selenium robot for auto-bumping vBulletin posts'
  s.description  = "Logs in onto vBulletin forum boards, finds all user's threads and bumps all the posts"
  s.homepage     = 'https://github.com/chillum/autoup'
  s.license      = 'Apache-2.0'
  s.author       = 'Vasily Korytov'
  s.email        = 'vasily.korytov@yahoo.com'
  s.files        = ['LICENSE.txt',  'README.md', 'examples/autoup.yml', 'autoup.gemspec', 'lib/autoup.rb']
  s.executables  << 'autoup'
  s.add_dependency 'selenium-webdriver', '~> 2.43'
end

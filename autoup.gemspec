Gem::Specification.new do |s|
  s.name        = 'autoup'
  s.version     = '0.9'
  s.license     = 'Apache-2.0'
  s.summary     = 'Selenium robot for auto-bumping vBulletin posts'
  s.description = "Logs in onto vBulletin forum boards, finds all user's threads and bumps all the posts"
  s.author      = 'Vasily Korytov'
  s.email       = 'vasily.korytov@yahoo.com'
  s.files       = ['LICENSE.txt',  'README.md', 'examples/autoup.yml', 'autoup.gemspec', 'lib/autoup.rb']
  s.executables << 'autoup'
  s.homepage    = 'https://github.com/chillum/autoup'
end

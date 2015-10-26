require_relative 'lib/autoup/version.rb'

task :default => :install

task :install => :build do
  sh "sudo gem install autoup-#{AutoUp::Version}.gem"
end

task :uninstall do
  sh 'sudo gem uninstall autoup'
end

task :push => :build do
  sh "gem push autoup-#{AutoUp::Version}.gem"
end

task :build do
  sh 'gem build autoup.gemspec'
end

task :clean do
  rm Dir.glob('*.gem')
end

require 'gem2deb/rake/testtask'

task :default do
  ENV['LANG'] = 'C'
  ENV.delete 'LC_CTYPE'
end

EXCLUDE_TESTS = %w[
   test/coffee_test.rb
]

Gem2Deb::Rake::TestTask.new do |t|
  t.libs = ['test']
  t.test_files = FileList['test/**/*_test.rb'] + FileList['test/**/test_*.rb'] - EXCLUDE_TESTS
end

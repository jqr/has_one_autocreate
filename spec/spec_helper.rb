require 'spec'
require 'fileutils'

require File.join(File.dirname(__FILE__), '..', 'lib', 'has_one_autocreate')

require File.join(File.dirname(__FILE__), 'models')

TEST_DATABASE_FILE = File.join(File.dirname(__FILE__), 'test.sqlite3')

Spec::Runner.configure do |config|
  
end
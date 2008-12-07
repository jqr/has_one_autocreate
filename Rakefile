require 'spec/rake/spectask'

require 'echoe'
Echoe.new 'has_one_autocreate' do |p|
  p.description     = "Automatic creation and building for has_one relationships."
  # p.url             = "http://has_one_autocreate.rubyforge.org"
  p.author          = "Elijah Miller"
  p.email           = "elijah.miller@gmail.com"
  p.retain_gemspec  = true
  p.need_tar_gz     = false
  p.extra_deps      = [
  ]
  p.ignore_pattern  = ['spec/test.sqlite3']
end

desc 'Default: run specs'
task :default => :spec
Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList["spec/**/*_spec.rb"]
end

task :test => :spec

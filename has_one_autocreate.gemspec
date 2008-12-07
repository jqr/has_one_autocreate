# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{has_one_autocreate}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Elijah Miller"]
  s.date = %q{2008-12-07}
  s.description = %q{Automatic creation and building for has_one relationships.}
  s.email = %q{elijah.miller@gmail.com}
  s.extra_rdoc_files = ["CHANGELOG", "lib/has_one_autocreate.rb", "README.rdoc"]
  s.files = ["CHANGELOG", "init.rb", "lib/has_one_autocreate.rb", "Manifest", "Rakefile", "README.rdoc", "spec/has_one_autocreate_spec.rb", "spec/models.rb", "spec/spec_helper.rb", "has_one_autocreate.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Has_one_autocreate", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{has_one_autocreate}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Automatic creation and building for has_one relationships.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<echoe>, [">= 0"])
    else
      s.add_dependency(%q<echoe>, [">= 0"])
    end
  else
    s.add_dependency(%q<echoe>, [">= 0"])
  end
end

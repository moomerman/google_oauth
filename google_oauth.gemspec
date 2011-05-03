# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{google_oauth}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Richard Taylor"]
  s.date = %q{2011-05-03}
  s.description = %q{google_oauth is a OAuth2 Ruby client library for the Google Data APIs}
  s.email = %q{moomerman@gmail.com}
  s.files = ["LICENSE", "README.textile","lib/google_oauth.rb"] + Dir.glob('lib/google_oauth/*.rb')
  s.has_rdoc = false
  s.homepage = %q{http://github.com/moomerman/google_oauth}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{google_oauth}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{google_oauth is a OAuth2 Ruby client library for the Google Data APIs}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<oauth2>, [">= 0.0.8"])
      s.add_runtime_dependency(%q<json>, [">= 1.1.9"])
      %w(shoulda mocha).each do |dep|
        s.add_development_dependency dep
      end
    else
      s.add_dependency(%q<oauth2>, [">= 0.0.8"])
      s.add_dependency(%q<json>, [">= 1.1.9", "<= 1.2.4"])
    end
  else
    s.add_dependency(%q<oauth2>, [">= 0.0.8"])
    s.add_dependency(%q<json>, [">= 1.1.9"])
  end
end

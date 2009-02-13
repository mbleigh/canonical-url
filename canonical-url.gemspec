# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{canonical-url}
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Bleigh"]
  s.date = %q{2009-02-13}
  s.description = %q{TODO}
  s.email = %q{michael@intridea.com}
  s.files = ["LICENSE", "Rakefile", "README.markdown", "VERSION.yml", "lib/canonical_url.rb", "rails/init.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/mbleigh/canonical-url}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Rails plugin to take advantage of the new Canonical URL support of search engines.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

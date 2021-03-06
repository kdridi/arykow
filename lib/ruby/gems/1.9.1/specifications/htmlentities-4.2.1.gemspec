# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{htmlentities}
  s.version = "4.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Paul Battley"]
  s.date = %q{2010-04-06}
  s.email = %q{pbattley@gmail.com}
  s.extra_rdoc_files = ["README.txt", "History.txt", "COPYING.txt"]
  s.files = ["lib/htmlentities/version.rb", "lib/htmlentities/flavors.rb", "lib/htmlentities/encoder.rb", "lib/htmlentities/legacy.rb", "lib/htmlentities/mappings/html4.rb", "lib/htmlentities/mappings/expanded.rb", "lib/htmlentities/mappings/xhtml1.rb", "lib/htmlentities/decoder.rb", "lib/htmlentities.rb", "test/entities_test.rb", "test/xhtml1_test.rb", "test/roundtrip_test.rb", "test/legacy_test.rb", "test/expanded_test.rb", "test/test_all.rb", "test/html4_test.rb", "perf/profile.rb", "perf/benchmark.rb", "perf/performance.rb", "setup.rb", "README.txt", "History.txt", "COPYING.txt"]
  s.homepage = %q{http://htmlentities.rubyforge.org/}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A module for encoding and decoding (X)HTML entities.}
  s.test_files = ["test/test_all.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

Gem::Specification.new do |s|
  s.name               = "autotag"
  s.version            = "0.0.1"
  s.default_executable = "autotag"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Matt Frisbie"]
  s.date = %q{2013-01-13}
  s.email = %q{msfrisbie@gmail.com}
  #s.files = ["Rakefile", "lib/autotag.rb", "lib/autotag/extractor.rb", "bin/autotag"]
  #s.test_files = ["test/test_autotag.rb"]
  s.homepage = %q{http://rubygems.org/gems/autotag}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{autotag}
  s.description = %q{Autotag content gem}

  s.rubyforge_project = "autotag"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  s.require_paths = ["lib"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end


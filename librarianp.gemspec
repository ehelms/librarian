# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "librarianp"
  gem.version       = File.read(File.expand_path("../VERSION", __FILE__)).strip
  gem.authors       = ["Jay Feldblum", "Carlos Sanchez"]
  gem.email         = ["y_feldblum@yahoo.com", "carlos@apache.org"]
  gem.summary       = %q{A Framework for Bundlers.}
  gem.description   = %q{A Framework for Bundlers, used by librarian-puppet.}
  gem.homepage      = "https://github.com/voxpupuli/librarian"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "thor", "~> 1.0"

  gem.add_development_dependency 'rake', '< 11.0'
  gem.add_development_dependency "rspec", "~> 2.14"
  gem.add_development_dependency "json"
  gem.add_development_dependency "fakefs", "~> 0.4.2"
end

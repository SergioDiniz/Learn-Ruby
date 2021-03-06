# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_file/version'

Gem::Specification.new do |spec|
  spec.name          = "active_file"
  spec.version       = ActiveFile::VERSION
  spec.authors       = ["Sergio Diniz"]
  spec.email         = ["sergiodinizsh@gmail.com"]

  spec.summary       = %q{Gerenciador de Arquivo}
  spec.description   = %q{Atividade para estudar Ruby}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = Dir["{lib/**/*.rb,lib/tasks/*.rake,README.md,Rakefile,active_file.gemspec}"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "brnumeros", "3.3.0"
end

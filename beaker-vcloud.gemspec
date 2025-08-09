$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'beaker-vcloud/version'

Gem::Specification.new do |s|
  s.name        = 'beaker-vcloud'
  s.version     = BeakerVcloud::VERSION
  s.authors     = ['Vox Pupuli']
  s.email       = ['voxpupuli@groups.io']
  s.homepage    = 'https://github.com/voxpupuli/beaker-vcloud'
  s.summary     = 'Beaker DSL Extension Helpers!'
  s.description = 'For use for the Beaker acceptance testing tool'
  s.license     = 'Apache-2.0'

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 2.7'

  # Testing dependencies
  s.add_development_dependency 'fakefs', '~> 2.5'
  s.add_development_dependency 'rake', '~> 13.2', '>= 13.2.1'
  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'rspec-its', '~> 1.3'
  s.add_development_dependency 'voxpupuli-rubocop', '~> 3.1.0'

  # Run time dependencies
  s.add_dependency 'beaker', '>= 5.8', '< 7'
  s.add_dependency 'beaker-vmware', '~> 2.1'
  s.add_dependency 'rbvmomi2', '~> 3.7', '>= 3.7.1'
  s.add_dependency 'stringify-hash', '~> 0.0.0'
end

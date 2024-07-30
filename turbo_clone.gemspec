# frozen_string_literal: true

require_relative 'lib/turbo_clone/version'

Gem::Specification.new do |spec|
  spec.name        = 'turbo_clone'
  spec.version     = TurboClone::VERSION
  spec.authors     = ['Ricardo Barahona']
  spec.email       = ['ricardodbarahona@gmail.com']
  spec.summary     = 'Turbo-rails clone.'
  spec.license     = 'MIT'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir['{app,config,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  end

  spec.add_dependency 'rails', '>= 7.0.0'
end

# frozen_string_literal: true

require_relative 'lib/smartness_detector/version'

Gem::Specification.new do |spec|
  spec.name = 'smartness_detector'
  spec.version = SmartnessDetector::VERSION
  spec.authors = ['sumar7']
  spec.email = ['sajjadumardev@gmail.com']

  spec.summary = 'This is a super cool gem to detect smartness of people.'
  spec.description = 'A super cool gem (test gem for education purpose).'
  spec.homepage = 'https://github.com/SUMAR7/smartness_detectore'
  spec.license = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/SUMAR7/smartness_detectore'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # development dependencies
  spec.add_development_dependency 'rspec', '~> 3.10'
end

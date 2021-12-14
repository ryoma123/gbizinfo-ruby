require_relative 'lib/gbizinfo/version'

Gem::Specification.new do |spec|
  spec.name          = 'gbizinfo-ruby'
  spec.version       = Gbizinfo::VERSION
  spec.authors       = ['ryoma123']
  spec.email         = ['ryoma.ono.2661@gmail.com']
  spec.summary       = 'gBizINFO API client for Ruby.'
  spec.description   = 'gBizINFO API client for Ruby.'
  spec.homepage      = 'https://github.com/ryoma123/gbizinfo-ruby'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 3.0.3'

  spec.metadata['source_code_uri'] = 'https://github.com/ryoma123/gbizinfo-ruby'
  spec.metadata['changelog_uri'] = 'https://github.com/ryoma123/gbizinfo-ruby/blob/master/CHANGELOG.md'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday'
  spec.add_dependency 'faraday_middleware'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
end

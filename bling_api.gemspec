# frozen_string_literal: true

require_relative 'lib/bling_api/version'

Gem::Specification.new do |spec|
  spec.name = 'bling_api'
  spec.version = BlingApi::VERSION
  spec.authors = ['puppe1990']
  spec.email = ['matheus.puppe90@hotmail.com']

  spec.summary = 'A Ruby gem for interacting with the Bling API to manage products and other resources.'
  spec.description = 'This Ruby gem provides an easy-to-use client for interacting with the Bling API.'
  spec.homepage = 'https://github.com/Purple-Stock/bling_api'
  spec.license = 'MIT'
  spec.required_ruby_version = '3.1.2'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'

    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = 'https://github.com/Purple-Stock/bling_api'
    spec.metadata['changelog_uri'] = 'https://github.com/Purple-Stock/bling_api/blob/main/CHANGELOG.md.'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'httparty', '~> 0.21.0'
end

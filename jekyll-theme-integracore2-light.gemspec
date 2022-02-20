# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name          = 'jekyll-theme-integracore2-light'
  s.version       = '0.1.1'
  s.license       = 'CC0-1.0'
  s.authors       = ['Ali Saif']
  s.email         = ['integracore2@gmail.com']
  s.homepage      = 'https://github.com/integracore2'
  s.summary       = 'This is a custom Jekyll theme for the author\'s personal use.'

  s.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^((_includes|_layouts|_sass|assets)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  s.platform = Gem::Platform::RUBY
  s.add_runtime_dependency 'jekyll', '> 3.5', '< 5.0'
  s.add_development_dependency 'html-proofer', '~> 3.0'
  s.add_development_dependency 'w3c_validators', '~> 1.3'
end

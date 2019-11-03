lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yandex_translator/version'

Gem::Specification.new do |spec|
  spec.name          = "yandex_translator"
  spec.version       = YandexTranslator::VERSION
  spec.summary       = 'api yandex translator'
  spec.description   = 'yandex translator'
  spec.homepage      = 'https://github.com/Gazzzolina/gazzzolina.yandexTranslateRubyGem.io'

   spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "faraday", "~> 0.12.1"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "can_can_js"
  spec.version       = '1.0.0'
  spec.authors       = ["Eric Hankins"]
  spec.description   = "Apply CanCan rules in JS"
  spec.summary       = "Apply CanCan rules in JS"
  spec.homepage      = "https://github.com/rednovalabs/cancanjs"
  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

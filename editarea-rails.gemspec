# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'editarea-rails/version'

Gem::Specification.new do |gem|
  gem.name          = "editarea-rails"
  gem.version       = Editarea::Rails::VERSION
  gem.authors       = ["Jun"]
  gem.email         = ["elexjun@gmail.com"]
  gem.description   = %q{Editarea Gem}
  gem.summary       = %q{Editarea Gem}
  gem.homepage      = "https://github.com/junwchina/editarea-rails"

  gem.files         = Dir["{lib,vendor}/**/*"] + ["LICENSE.txt", "README.md"]
  gem.require_paths = ["lib"]

  gem.add_dependency "rails", "~> 3.1"
end

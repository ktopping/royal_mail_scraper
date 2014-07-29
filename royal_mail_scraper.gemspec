# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'royal_mail_scraper/version'

Gem::Specification.new do |spec|
  spec.name          = "royal_mail_scraper"
  spec.version       = RoyalMailScraper::VERSION
  spec.authors       = ["Laurynas Butkus"]
  spec.email         = ["laurynas.butkus@gmail.com"]
  spec.description   = %q{A simple page scraper for Royal Mail Track and Trace}
  spec.summary       = %q{Fetches tracking information from Royal Mail page}
  spec.homepage      = "https://github.com/laurynas/royal_mail_scraper"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri", "~> 1.5"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
